#!/bin/bash
ssh-keygen -t rsa
cat id_rsa.pub | ssh vagrant@192.168.100.10 'cat >> .ssh/authorized_keys'
ssh vagrant@192.168.100.10
#add fix to exercise5-server2 here
