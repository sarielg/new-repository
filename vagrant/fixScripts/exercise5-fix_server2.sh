#!/bin/bash
#add fix to exercise5-server2 here
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""
cat ~/.ssh//id_rsa.pub | sshpass -p 'vagrant' ssh vagrant@server2 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
