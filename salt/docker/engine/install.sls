add_docker_gpg_key:
  cmd.run:
    - name: curl -sSL https://get.docker.com/gpg | sudo apt-key add -

install_docker-engine:
  cmd.run:
    - name: curl -sSL https://get.docker.com/ | sh
    - require:
      - cmd: add_docker_gpg_key
