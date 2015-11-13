{% set user = grains['user'] %}
{% set group = grains['group'] %}
{% set version = pillar['docker-machine']['version'] %}


install_docker-machine:
  file.managed:
    - name: /usr/local/bin/docker-machine
    - source: https://github.com/docker/machine/releases/download/v{{ version }}/docker-machine_linux-amd64
    - source_hash: sha512=10cbe679ecc2763f7eccba3aaafefcc2f35111a038917f623754c2da04cc0f8fe9f7fdf51ad8fd1138f1a2ee3180a24ee0aac4c050f964483bd6bf363e1de61c
    - user: {{ user }}
    - group: {{ group }}
    - mode: 755

