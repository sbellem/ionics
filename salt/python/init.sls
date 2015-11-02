python:
  pkg.installed

{% if grains['os_family'] == 'Debian' %}
python-dev:
  pkg.installed

python-pip:
  pkg.installed

python-software-properties:
  pkg.installed

python-apt:
  pkg.installed

python-pycurl:
  pkg.installed
{% endif %}
