include:
  - pydio.python-mysqldb

mysql-requirements:
  pkg.installed:
    - pkgs:
      - mysql-server
      - mysql-client
    - require_in:
      - service: mysql
      - mysql_user: pydio

mysql:
  service.running:
    - watch:
      - pkg: mysql-requirements

pydio-local:
  mysql_user.present:
    - name: pydio
    - host: localhost
    - password: {{ salt['pillar.get']('pydio:pydiopass', '') }}
    - require:
      - pkg: python-mysqldb
      - pkg: mysql-requirements
      - service: mysql

pydiodb:
  mysql_database.present:
    - name: pydio
    - require:
      - mysql_user: pydio
      - pkg: python-mysqldb
  mysql_grants.present:
    - grant: all privileges
    - database: pydio.*
    - host: localhost
    - user: pydio
    - require:
      - mysql_database: pydio
      - pkg: python-mysqldb
      - service: mysql

