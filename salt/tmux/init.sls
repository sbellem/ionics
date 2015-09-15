tmux:
  pkg.installed

tmux_conf:
  file.managed:
    - name: ~/.tmux.conf
    - source: salt://tmux/files/.tmux.conf
    - require:
      - pkg: tmux
