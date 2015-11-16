{% set map = salt['grains.filter_by']({
    'Debian': {
        'libxml2': {
            'pkg': 'libxml2-dev',
        },
        'libxslt': {
            'pkg': 'libxslt1-dev',
        },
    },
    'MacOS': {
        'libxml2': {
            'pkg': 'libxml2',
        },
        'libxslt': {
            'pkg': 'libxslt',
        },
    },
}, default='Debian') %}


libxml2:
  pkg.installed:
    - name: {{ map.libxml2.pkg }}

libxslt:
  pkg.installed:
    - name: {{ map.libxslt.pkg }}
