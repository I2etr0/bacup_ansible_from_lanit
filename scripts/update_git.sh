#!/bin/bash

cd /home/retr0
ls | grep -v update_git.sh | xargs sudo  rm -rfv
git clone https://gitlab.dks.lanit.ru/DKS/trainee/gorodilov.git

clear