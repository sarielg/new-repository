#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -t rsa -N "" -f server1key
sudo cat ~/.ssh/id_rsa.pub | ssh root@server2 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
