adagios
=========
This ansible role will install Adagios with PNP4Nagios and Naemon.  

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
- name: Install the adagios with Naemon and pnp4nagios
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
