#!/bin/sh -l
#set -e

echo $3

if [ $3 = "strict" ] ; then
   strict=" "
   echo "using strict mode "
else
    strict=" --no-strict"
    echo "using non strict mode "
fi



yamale --schema $1 $2
time=$(date)
echo "::set-output name=time::$time"
