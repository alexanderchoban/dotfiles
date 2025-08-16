#!/bin/bash

apk add nano vim git openssh screen curl

git config --global user.name "Alexander Choban"
git config --glboal user.email "alexander.choban@gmail.com"
ssh-keygen -t ed25519 -C "alexander.choban@gmail.com"
