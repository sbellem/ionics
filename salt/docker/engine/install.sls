{% from "docker/map.jinja" import docker with context %}


include:
  - python


install_docker_engine:
  pkg.installed:
    - name: docker-engine
    - refresh: True
    - require:
      - pkg: purge_lxc_docker

purge_lxc_docker:
  pkg.purged:
    - name: lxc-docker*

docker_engine_repo:
  pkgrepo.managed:
    - name: {{ docker.pkgrepo.name }}
    - file: {{ docker.pkgrepo.file }}
    - keyid: {{ docker.pkgrepo.keyid }}
    - keyserver: {{ docker.pkgrepo.keyserver }} 
    - clean_file: True
    - require:
      - pkg: python-software-properties
    - require_in:
      - pkg: install_docker_engine
