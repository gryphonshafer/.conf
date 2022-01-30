# Postfix Relaying via Gmail

To use Gmail as the relay, you need to turn on 2-factor authentication, then
setup an app to have an app-specific security key.

- [Generate an App Password for Postfix](https://www.linode.com/docs/guides/configure-postfix-to-send-mail-using-gmail-and-google-workspace-on-debian-or-ubuntu/#generate-an-app-password-for-postfix)
- [Use Postfix Transport Map & Relayhost Map For Flexible Email Delivery](https://www.linuxbabe.com/mail-server/postfix-transport-map-relay-map-flexible-email-delivery)

    mkdir /etc/postfix/relayhost

    vi /etc/postfix/relayhost/sasl_passwds

        [smtp.gmail.com]:587 username@gmail.com:google_security_app_key

    chmod 600 /etc/postfix/relayhost/sasl_passwds
    postmap /etc/postfix/relayhost/sasl_passwds

    vi /etc/postfix/relayhost/relayhost.cf

        relayhost                  = [smtp.gmail.com]:587
        smtp_use_tls               = yes
        smtp_sasl_auth_enable      = yes
        smtp_sasl_security_options =
        smtp_sasl_password_maps    = hash:/etc/postfix/relayhost/sasl_passwds
        smtp_tls_CAfile            = /etc/ssl/certs/ca-certificates.crt
        smtp_tls_wrappermode       = yes
        smtp_tls_security_level    = encrypt

    cat /etc/postfix/relayhost/relayhost.cf >> /etc/postfix/main.cf

    service postfix restart

For each email address you want to send from, you need to add it in Gmail to
the list under "Send mail as". Use port 465 and "as alias" for each.
