install_nginx: 
  pkg.installed:
    - name: nginx-full
  service.running:
    - name: nginx
    - enable: True
