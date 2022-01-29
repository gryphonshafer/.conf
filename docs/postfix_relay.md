# Postfix Relaying via Gmail

To setup Postfix to relay via another SMTP server like Gmail, you can use either
a global (all email is relayed) or a per address/domain relay setup.

To use Gmail as the relay, you need to turn on 2-factor authentication, then
setup an app to have an app-specific security key.

[Generate an App Password for Postfix](https://www.linode.com/docs/guides/configure-postfix-to-send-mail-using-gmail-and-google-workspace-on-debian-or-ubuntu/#generate-an-app-password-for-postfix)

--------------------------------------------------------------------------------

## Global Relay

    mkdir /etc/postfix/relayhosts

    vi /etc/postfix/relayhosts/sasl_passwds

        [smtp.gmail.com]:587 username@gmail.com:google_security_app_key

    chmod 600 /etc/postfix/relayhosts/sasl_passwds
    postmap /etc/postfix/relayhosts/sasl_passwds

    vi /etc/postfix/main.cf

        relayhost                  = [smtp.gmail.com]:587
        smtp_use_tls               = yes
        smtp_sasl_auth_enable      = yes
        smtp_sasl_security_options =
        smtp_sasl_password_maps    = hash:/etc/postfix/relayhosts/sasl_passwds
        smtp_tls_CAfile            = /etc/ssl/certs/ca-certificates.crt

    service postfix restart

--------------------------------------------------------------------------------

## Per Address/Domain Relay

    mkdir /etc/postfix/relayhosts

    vi /etc/postfix/relayhosts/sasl_passwds

        [smtp.gmail.com]:587 username@gmail.com:google_security_app_key

    chmod 600 /etc/postfix/relayhosts/sasl_passwds
    postmap /etc/postfix/relayhosts/sasl_passwds

    vi /etc/postfix/relayhosts/bysender

        @example.com [smtp.gmail.com]:587

    postmap /etc/postfix/relayhosts/bysender

    vi /etc/postfix/main.cf

        sender_dependent_relayhost_maps = hash:/etc/postfix/relayhosts/bysender
        smtp_use_tls                    = yes
        smtp_sasl_auth_enable           = yes
        smtp_sasl_security_options      =
        smtp_sasl_password_maps         = hash:/etc/postfix/relayhosts/sasl_passwds
        smtp_tls_CAfile                 = /etc/ssl/certs/ca-certificates.crt

    service postfix restart
