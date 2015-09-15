{% set version = pillar['docker-compose']['version'] %}


bash_completion_docker-compose:
  file.managed:
    - name: /etc/bash_completion.d/docker-compose
    - source: https://raw.githubusercontent.com/docker/compose/{{ version }}/contrib/completion/bash/docker-compose
    - source_hash: sha512=7c9dc7f3600383206403fee739e474ca54472c2d8bc51ec8ebfe5255b43811031528407e7e206a13d2c98a8dd65e9bb94cb9437dd6a9eac9fbdd338b8a26f0f7
