purge_docker-engine:
  pkg.purged:
    - name: docker-engine

autoremove_docker-engine:
  cmd.run:
    - name: apt-get autoremove -y --purge docker-engine

clean_up_docker-engine:
  file.absent:
    - name: /var/lib/docker
