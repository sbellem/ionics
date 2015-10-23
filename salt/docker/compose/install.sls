{% set user = pillar['user'] %}
{% set group = pillar['group'] %}
{% set version = pillar['docker-compose']['version'] %}


install_docker-compose:
  file.managed:
    - name: /usr/local/bin/docker-compose
    - source: https://github.com/docker/compose/releases/download/{{ version }}/docker-compose-Linux-X86_64
    - source_hash: sha512=0488dfc210acf3ad07483a255719327a695f829f9998adbf23f39af25b04e3cc575417658b9dd587e815cc73f780aa24587c1e742a2f2920c8d26b637653b9a2
    - user: {{ user }}
    - group: {{ group }}
    - mode: 755
