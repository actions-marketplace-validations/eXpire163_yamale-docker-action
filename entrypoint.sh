#!/bin/sh -l

echo "Hello $1"
echo python --version
yamale --schema $1 $2
time=$(date)
echo "::set-output name=time::$time"
