#!/bin/bash

# mkdir $2 # makes the specified directory
tar -xf NthPrime.tgz -C $2 # untars NthPrime.tgz into it

cd $2/NthPrime # cds into the new uncompressed directory

gcc -o NthPrime main.c nth_prime.c

./NthPrime $1
