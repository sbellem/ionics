{% set ruby = salt['grains.filter_by']({
    'Debian': {'pkg': 'ruby-dev'},
    'MacOS': {'pkg': 'ruby'},
}, default='Debian') %}


ruby:
  pkg.installed:
    - name: {{ ruby.pkg }}
