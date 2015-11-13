{% set sha512 = pillar['django']['bash_completion']['sha512'] %}


get_django_bash_completion:
  file.managed:
    - name: ~/.django_bash_completion
    - source: https://raw.github.com/django/django/master/extras/django_bash_completion
    - source_hash: sha512={{ sha512 }}
    - user: {{ grains['user'] }}
    - group: {{ grains['group'] }}
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
