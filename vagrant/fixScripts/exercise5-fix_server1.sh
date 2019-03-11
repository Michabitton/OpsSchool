#!/bin/bash
ssh-keygen -t rsa

ssh-keygen -f "/home/vagrant/.ssh/known_hosts" -R 192.168.100.11
cat id_rsa.pub | ssh vagrant@192.168.100.11 'cat >> .ssh/authorized_keys'

ssh vagrant@192.168.100.11
#add fix to exercise5-server1 here
