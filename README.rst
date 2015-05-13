======
pydio
======

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``pydio``
------------

Installs pydio package and adds pydio's official repositories.
creates a mysql database with password from pillar

``pydio.apache``
----------------

Installs apache configuration suitable for pydio

.. note::

    This formula works on Debian only
