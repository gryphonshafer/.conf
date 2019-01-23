# WWW Customization

Follow these notes for the new WWW server customization following an Ansible run.

## Wordpress

- Transfer all content with permissions from `/var/www/gryphonshafer.com/blog/wp-content`

## Trac

For each of the domains:

- `mkdir /var/trac/{{ domain }}`
- `env trac-admin /var/trac/{{ domain }} initenv "{{ domain }} Trac" "sqlite:db/trac.db"`
- `env trac-admin /var/trac/{{ domain }} permission add {{ user }} TRAC_ADMIN`

The domains are:

- shfr.us
- stewardhouse.com
- goldenguru.com

Finally, transfer all content with permissions from `/var/trac`.

## IRC

Edit `/etc/ircd-hybrid/ircd.conf` as follows:

- Update the `rsa_private_key_file` value
- Update the `ssl_certificate_file` value
- Remove the `auth` example block
- Comment-out the `auth` "*@*" block
- Add the per-user `auth` blocks from the old `ufda` configuration
- De-comment the `operator` block and update the `user` and `password`
- `service ircd-hybrid restart`

## HAL

As dev user:

    git clone ssh://git@git.goldenguru.com:6722/goldenguru/hal
    cd hal
    scp -r -P 4222 old_server:/home/starman/bots/hal/local .
    chmod a+w local/hal.*
    cd ..
    sudo mv hal /home/ops/.

As ops user:

    cd ~/hal
    perlbrew lib create hal
    perlbrew use @hal
    cpanm -n -f --installdeps .

Create into `/etc/init.d/hal`:

    #!/bin/bash

    ### BEGIN INIT INFO
    # Provides:          hal
    # Required-Start:    ircd-hybrid
    # Required-Stop:
    # Default-Start:     2 3 4 5
    # Default-Stop:      0 1 6
    # Short-Description: HAL 9000 IRC Bot
    # Description:       HAL 9000 IRC Bot for the local IRC server
    ### END INIT INFO

    RUN_USER=ops
    ROOT_DIR=/home/ops/hal
    COMMAND=$1

    /bin/su -l $RUN_USER <<COMMANDS_END

    builtin source /opt/perl5/etc/bashrc
    perlbrew use @hal
    builtin cd $ROOT_DIR

    ./hal.pl $COMMAND

    COMMANDS_END

As root user:

    chmod a+x /etc/init.d/hal
    update-rc.d hal defaults
    service hal start

## Crons

As dev user:

    cd
    scp -r -P 4222 old_server:/home/gryphon/crons .
    cd ~/crons
    cpanm -n -f --installdeps .

Copy the content of the dev user and `www-data` user crontabs to their new home.

## GGTT

As dev user:

    git clone ssh://git@git.goldenguru.com:6722/goldenguru/ggtt
    cd ggtt
    scp -r -P 4222 old_server:/var/www/goldenguru.com/ggtt/local .

    sudo chown ops local
    cd local
    touch ggtt.sqlite access.log error.log
    chmod 660 ggtt.sqlite access.log error.log
    sudo chown ops ggtt.sqlite access.log error.log

    cd ../..
    sudo mv ggtt /var/www/goldenguru.com/.
    sudo apt-get install starman

As ops user:

    cd /var/www/goldenguru.com/ggtt
    perlbrew lib create ggtt
    perlbrew use @ggtt
    cpanm -n -f --installdeps .

Create into `/etc/init.d/ggtt`:

    #!/bin/bash
    ### BEGIN INIT INFO
    # Provides:          ggtt
    # Required-Start:    nginx
    # Required-Stop:
    # Default-Start:     2 3 4 5
    # Default-Stop:      0 1 6
    # Short-Description: GGTT
    # Description:       Golden Guru Time Tracker
    ### END INIT INFO

    RUN_USER=ops
    ROOT_DIR="/var/www/goldenguru.com/ggtt"
    PIDFILE="$ROOT_DIR/local/ggtt.pid"

    start() {
        /bin/su -l $RUN_USER <<EOF
            builtin source /opt/perl5/etc/bashrc
            perlbrew use @ggtt
            builtin cd $ROOT_DIR

            /usr/bin/env starman \
                --daemonize \
                --pid $PIDFILE \
                --listen localhost:5000 \
                --error-log $ROOT_DIR/local/error.log \
                --access-log $ROOT_DIR/local/access.log \
                --workers 2 \
                --max-requests 1000 \
                $ROOT_DIR/app.psgi
    EOF

        RETVAL=$?
        echo
        [ $RETVAL = 0 ]
        return $RETVAL
    }

    restart() {
        stop
        start
    }

    stop() {
        pkill -F $PIDFILE
        RETVAL=$?
        echo
        [ $RETVAL = 0 ] && rm -f $PIDFILE
    }

    case "$1" in
        start)
            echo -n $"Starting GGTT: "
            start
            ;;
        restart)
            echo -n $"Restarting GGTT: "
            restart
             ;;
        stop)
            echo -n $"Stopping GGTT: "
            stop
            ;;
        *)
            echo $"Usage: ggtt {start|restart|stop}"
            exit 1
    esac

    exit $RETVAL

As root user:

    chmod a+x /etc/init.d/ggtt
    update-rc.d ggtt defaults
    service ggtt start

## `v_jira_notif`

As dev user:

    git clone ssh://git@git.goldenguru.com:6722/vindicia/jira
    cd jira/service
    touch last_called.time access.log error.log
    sudo chown ops.ops last_called.time
    chmod 660 access.log error.log
    sudo chown ops access.log error.log
    cd ../..
    sudo mv jira /var/www/goldenguru.com/v_jira_notif

As ops user:

    cd /var/www/goldenguru.com/v_jira_notif
    perlbrew lib create v_jira_notif
    perlbrew use @v_jira_notif
    cpanm -n -f --installdeps .

Create into `/etc/init.d/v_jira_notif`:

    #!/bin/bash
    ### BEGIN INIT INFO
    # Provides:          v_jira_notif
    # Required-Start:    nginx
    # Required-Stop:
    # Default-Start:     2 3 4 5
    # Default-Stop:      0 1 6
    # Short-Description: v_jira_notif
    # Description:       Vindicia Jira Notification Service
    ### END INIT INFO

    RUN_USER=ops
    ROOT_DIR="/var/www/goldenguru.com/v_jira_notif"
    PIDFILE="/var/run/v_jira_notif.pid"

    start() {
        /bin/su -l $RUN_USER <<EOF
            builtin source /opt/perl5/etc/bashrc
            perlbrew use @v_jira_notif
            builtin cd $ROOT_DIR

            /usr/bin/env starman \
                --daemonize \
                --pid $PIDFILE \
                --listen localhost:5000 \
                --error-log $ROOT_DIR/service/error.log \
                --access-log $ROOT_DIR/service/access.log \
                --workers 2 \
                --max-requests 1000 \
                $ROOT_DIR/service/vindicia_jira_monitor.pl
    EOF

        RETVAL=$?
        echo
        [ $RETVAL = 0 ]
        return $RETVAL
    }

    restart() {
        stop
        start
    }

    stop() {
        pkill -F $PIDFILE
        RETVAL=$?
        echo
        [ $RETVAL = 0 ] && rm -f $PIDFILE
    }

    case "$1" in
        start)
            echo -n $"Starting Vindicia Jira Notification: "
            start
            ;;
        restart)
            echo -n $"Restarting Vindicia Jira Notification: "
            restart
             ;;
        stop)
            echo -n $"Stopping Vindicia Jira Notification: "
            stop
            ;;
        *)
            echo $"Usage: v_jira_notif {start|restart|stop}"
            exit 1
    esac

    exit $RETVAL

As root user:

    chmod a+x /etc/init.d/v_jira_notif
    update-rc.d v_jira_notif defaults
    service v_jira_notif start

## Docker `gg_ss_link`

As root user:

    mkdir /root/docker
    cd /root/docker
    scp -r -P 4222 old_server:/root/docker/ssh_chroot .

    cd /root/docker/ssh_chroot
    docker build -t ssh_chroot .
    docker run -d -p 5822:22 --restart unless-stopped --name gg_ssh_link -h ggssh ssh_chroot

## Docker CBQZ

As dev user:

    git clone git@github.com:gryphonshafer/cbqz
    cd ..
    sudo mv cbqz /var/www/cbqz.org/.
    cd /var/www/cbqz.org/cbqz
    scp -r -P 4222 old_server:/var/www/cbqz.org/cbqz/.dest .
    scp -r -P 4222 old_server:/var/www/cbqz.org/cbqz/runtime .
    scp -r -P 4222 old_server:/var/www/cbqz.org/cbqz/data .

    cd /var/www/cbqz.org/cbqz
    perlbrew lib create cbqz
    perlbrew use @cbqz
    cpanm -n -f --installdeps .

As root user:

    cd /var/www/cbqz.org/cbqz
    docker build --compress --tag cbqz .

    mkdir -p /opt/docker/mysql/data
    set +o history

    docker run \
        --detach \
        --publish 3306:3306 \
        --net host \
        --name mysql \
        --restart unless-stopped \
        --env MYSQL_ROOT_PASSWORD=PASSWORD \
        --volume /opt/docker/mysql/data:/var/lib/mysql \
        mysql --default-authentication-plugin=mysql_native_password

    echo "\
        CREATE DATABASE cbqz; \
        CREATE USER 'cbqz'@'172.17.0.1' IDENTIFIED WITH mysql_native_password BY 'PASSWORD'; \
        GRANT ALL ON cbqz.* TO 'cbqz'@'172.17.0.1';\
        " | docker exec -i mysql mysql -uroot -pPASSWORD

    zcat /home/gryphon/gz/cbqz_2019-01-11.sql.gz | grep -v '^mysqldump:' | \
        docker exec -i mysql mysql -uroot -pPASSWORD cbqz

    set -o history
    rm runtime/*.pid

    docker run \
        --detach \
        --hostname cbqz \
        --net host \
        --publish 3000:3000 \
        --name cbqz \
        --restart unless-stopped \
        --volume `pwd`:/cbqz \
        cbqz
