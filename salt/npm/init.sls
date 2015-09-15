npm:
  pkg.installed

gulp:
  npm.installed:
    - require:
      - pkg: npm
