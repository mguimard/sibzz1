#!/bin/bash

# copy
ansible all -i inventory -m copy -a "dest=/etc/motd content=hello" --become

ansible debians -i inventory -m apt -a "name=apache2 state=present" --become
ansible centos -i inventory -m yum -a "name=httpd state=present" --become

ansible all -i inventory -m package -a "name={{http_server}} state=present" --become

ansible all -i inventory -m copy -a "src=index.html dest=/var/www/html/" --become

# Module service
ansible all -i inventory -m service -a "name={{http_server}} state=started enabled=yes" --become

#ansible all -i inventory -m reboot --become