#!/usr/bin/env bash

script=$1
scriptName=${1##*/}
tmpPath=/dev/shm/._myrecord/
tmpFile=$tmpPath$scriptName

if [ ! -x "$tmpPath" ]; then
    mkdir "$tmpPath"
fi

if [ ! -f $tmpFile ]; then
    touch $tmpFile
    echo $tmpFile
    sh $script
fi
