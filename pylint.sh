#! /bin/bash

# usage: ./pylint bdServices/bdReward -E

python2.7 /usr/bin/pylint --rcfile=./mmppylint.rc $1 $2
