#!/bin/bash

tar -xf $1 -C $2 # untars the specified file into the specified place

path=`pwd` # stores the file path as a variable

cd $2

#searches for and removes files containing "DELETE ME!"
grep -lrZ "DELETE ME!" . | xargs -0 rm -f --

path=${path}"/cleaned_"$1 #sets the new path

tar -zcf $path */* #re-tars the cleaned file

