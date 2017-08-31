#!/bin/bash

tar -xf $1 -C $2 # untars the specified file into the specified place

cd $2

grep -lrZ "DELETE ME!" . | xargs -0 rm -f --
