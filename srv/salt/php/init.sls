install_php:
  pkg.installed:
    - pkgs:
      - php5-fpm
      - php5-mysql

/etc/php5/fpm/php.ini:
  file.managed:
    - source: salt://php/php.ini
    - user: {{ grains['user'] }}
    - group: {{ grains['user'] }}

sudo service php5-fpm restart:
  cmd.run
