uninstall_docker-machine:
  file.absent:
    - name: /usr/local/bin/docker-machine
