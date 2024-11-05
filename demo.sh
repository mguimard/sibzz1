#!/bin/bash

# module copy

ansible all -i inventory -m copy -a "dest=/etc/my-file.txt content=hello" --become
ansible all -i inventory -m copy -a "dest=whatever.sh src=demo.sh"

# module apt ou yum ou package

ansible all -i inventory -m apt -a "name=vim state=present" --become

# module service 

ansible all -i inventory -m service -a "name=crond state=started" --become

# module reboot

ansible all -i inventory -m reboot --become


