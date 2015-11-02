postgresql:
  pkg.installed

{% if grains['os_family'] == 'Debian' %}
postgresql-contrib:
  pkg.installed

libpq-dev:
  pkg.installed
{% endif %}
