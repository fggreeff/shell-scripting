#!/bin/bash

# Do everything in root user (sudo)
sudo bash

# Which user are you?
whoami

# Change user ownership to 'someuser'
sudo chown someuser file.txt

# Change group ownership to '_guest'
sudo chgrp _guest file.txt

# Change permision (u=owner) (g=guest) (o=others) [r=read,w=write,x=execute]
chmod u=rw file.txt

# Make file executeable for everyone. Add(+x). Remove(-x)
chmod +x file.txt
