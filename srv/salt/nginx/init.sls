#!stateconf yaml . jinja

.nginx_install:
  pkg.installed:
    - name: nginx-full

.nginx_start:
  cmd.run:
    - name: sudo systemctl start nginx    
    - cwd: /home/{{ grains['user'] }}
    - user: {{ grains['user'] }}
