adagios
=========
This module will install adagios using Naemon instead of Nagios on a CentOS 7 server.  Configures pnp4nagios as well.

Requirements
------------
Base CENTOS 7

Role Variables
--------------
None

Dependencies
------------
None


Example Playbook
----------------

```sh
- name: Rotate keys used in AWS for hosts that use api keys.
  hosts: xxxx
  roles:
     - bouncingsoles.adagios
```
License
-------

BSD

Author Information
------------------

Patrick Durante
