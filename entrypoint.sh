#!/bin/sh -l

echo "Hello $1"
echo python3 --version
yamale --help
time=$(date)
echo "::set-output name=time::$time"
