{% set rabbitmq = salt['grains.filter_by']({
    'Debian': {'pkg': 'rabbitmq-server'},
    'MacOS': {'pkg': 'rabbitmq'},
}, default='Debian') %}


rabbitmq:
  pkg.installed:
    - name: {{ rabbitmq.pkg }}
