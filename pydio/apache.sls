{% from "pydio/map.jinja" import pydio with context %}

apache:
  pkg.installed:
    - pkgs:
      - apache2
      - php5
      - php5-gd
      - php5-mcrypt
      - php5-mysql
      - php5-ssh2
      - php5-apcu
      - libapache2-mod-xsendfile
  service.running:
    - name: apache2
    - watch:
      - pkg: apache2
      - pkg: {{ pydio.pkg }}
