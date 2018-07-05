install_mysql:
  pkg.installed:
    - pkgs:
      - mysql-server
      - mysql-client
