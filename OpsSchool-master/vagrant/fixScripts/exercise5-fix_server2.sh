#!/bin/bash 

ssh-keygen -f "/home/vagrant/.ssh/known_hosts" -R 192.168.100.10
cat /home/vagrant/.ssh/id_rsa.pub | ssh vagrant@192.168.100.10 'cat >> /home/vagrant/.ssh/authorized_keys'

ssh vagrant@192.168.100.10
#add fix to exercise5-server2 here
