#!/bin/bash
echo -e "\e[32m [+] Download Dockerfile"
git clone https://github.com/SecretShangri-La/acherontia-styx weaponX
if [ "$(pwd)/weaponX/$0" ]; then
  rm $(pwd)/weaponX/$0
fi
