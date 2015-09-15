vim:
  pkg.installed

bashrc_vim_terminal_solarized:
  file.append:
    - name: ~/.bashrc
    - text: export TERM=xterm-256color
