{% set docker_pkgrepo_name = "deb https://apt.dockerproject.org/repo ubuntu-vivid main"  %}


purge_docker-engine:
  pkg.purged:
    - name: docker-engine

autoremove_docker-engine:
  cmd.run:
    - name: apt-get autoremove -y --purge docker-engine

clean_up_docker-engine:
  file.absent:
    - name: /var/lib/docker

remove_docker_engine_repo:
  pkgrepo.absent:
    - name: {{ docker_pkgrepo_name }}
    - file: /etc/apt/sources.list.d/docker.list
    - keyid: 58118E89F3A912897C070ADBF76221572C52609D
