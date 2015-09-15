get_django_bash_completion:
  file.managed:
    - name: ~/.django_bash_completion
    - source: https://raw.github.com/django/django/master/extras/django_bash_completion
    - source_hash: sha256=34918c9a9c85b8f98b965937967b34faee9403f2fb88f4dc0229c58e55ac57d0
    - user: {{ pillar['user'] }}
    - group: {{ pillar['group'] }}
    - mode: 644

profile_django_bash_completion:
  file.append:
    - name: ~/.profile
    - text: . ~/.django_bash_completion
    - require:
      - file: get_django_bash_completion

bashrc_django_bash_completion:
  file.append:
    - name: ~/.bashrc
    - text: . ~/.django_bash_completion
    - require:
      - file: get_django_bash_completion
