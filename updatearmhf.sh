#!/bin/bash
EXP=$(dpkg -l | grep :armhf | sed -E 's/ii  ([a-z0-9\.\-]+).*/\1/g' | sed -e 's/.*-dev//g'  | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' | sed -E 's/ +/ /g' | sed -E 's/ +$//g')
sed -i "s/DEPS_PLACEHOLDER/${EXP}/g" config-bionic-armhf.json