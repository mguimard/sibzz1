Role Name
=========

This role creates a custom motd

Requirements
------------

Linux

Role Variables
--------------

```
# todo....
motd_show_welcome: true
motd_show_os_info: false
motd_show_interfaces: false
motd_show_dns: false
motd_show_partitions: false
```

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```
- hosts: servers
  vars:
    motd_show_dns: true
  roles:
      - motd
```

License
-------

DWTFYWPL

Author Information
------------------

Coucou
