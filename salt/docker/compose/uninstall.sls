uninstall_docker-compose:
  file.absent:
    - name: /usr/local/bin/docker-compose

uninstall_bash_completion_docker-compose:
  file.absent:
    - name: /etc/bash_completion.d/docker-compose
