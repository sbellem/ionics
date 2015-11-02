tmux:
  pkg.installed

tmux_conf:
  file.managed:
    - name: ~/.tmux.conf
    - source: salt://tmux/files/.tmux.conf
    - user: {{ grains['user'] }}
    - group: {{ grains['group'] }}
    - replace: False
    - require:
      - pkg: tmux
