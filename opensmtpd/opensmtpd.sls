opensmtpd:
  pkg:
    - installed

smtpd:
  service:
    - running
    - watch:
      - file: /usr/local/etc/mail/smtpd.conf
      - file: /etc/mail/aliases

/usr/local/etc/mail/smtpd.conf:
  file.managed:
    - source: salt://opensmtpd/config/smtpd.conf

/etc/mail/aliases:
  file.managed:
    - source: salt://opensmtpd/config/aliases