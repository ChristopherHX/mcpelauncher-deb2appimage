#!/bin/bash
EXP=$(dpkg -l | grep :armhf | sed -E 's/ii +//g' | sed -E 's/:.*//g' | sed -E 's/.*-dev//g' | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' | sed -E 's/ +/ /g' | sed -E 's/ /:armhf /g' | sed -E 's/ +$//g')
sed -i "s/DEPS_PLACEHOLDER/${EXP}/g" config-buster-armhf.json
