{% from "pydio/map.jinja" import pydio with context %}

include:
  - pydio.mysql
  - pydio.repo

install-pydio:
  pkg.installed:
    - name: {{ pydio.pkg }}
    - refresh: True
