install_php:
  pkg.installed:
    - pkgs:
      - php-pear
      - php5
      - php5-curl
      - php5-gd
      - php5-fpm
      - php5-mysql
      - php5-intl
      - php5-imagick
      - php5-imap
      - php5-mcrypt
      - php5-memcache
      - php5-pspell
      - php5-recode
      - php5-snmp
      - php5-sqlite
      - php5-tidy
      - php5-xmlrpc
      - php5-xsl

/etc/php5/fpm/php.ini:
  file.managed:
    - source: salt://php/php.ini
    - user: {{ grains['user'] }}
    - group: {{ grains['user'] }}

sudo service php5-fpm restart:
  cmd.run
