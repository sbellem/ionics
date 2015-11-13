{% set npm = salt['grains.filter_by']({
    'Debian': {'pkg': 'npm'},
    'MacOS': {'pkg': 'node'},
}, default='Debian') %}


npm:
  pkg.installed:
    - name: {{ npm.pkg }}

{% if grains['os_family'] == 'MacOS' %}
pkg-config:
  pkg.installed
{% endif %}

gulp:
  npm.installed:
    - require:
      - pkg: npm
