#i/bin/bash

gcc ./mangler.c -o mangler
./mangler &

process="$(ps | grep mangler | awk '{print $1}')"

pkill -9 mangler

rm -rf mangler