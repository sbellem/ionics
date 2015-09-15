{% set user = pillar['user'] %}
{% set group = pillar['group'] %}
{% set version = pillar['docker-compose']['version'] %}


install_docker-compose:
  file.managed:
    - name: /usr/local/bin/docker-compose
    - source: https://github.com/docker/compose/releases/download/{{ version }}/docker-compose-Linux-X86_64
    - source_hash: sha512=efa3c8f4bf3f3a9db59e9488ef20ef953d5024d670215b304262d7997c717980a70fa8e0d55991f2f8eb56b3400288f2097268138fc7257c87c6378bcabcbe9d
    - user: {{ user }}
    - group: {{ group }}
    - mode: 755
