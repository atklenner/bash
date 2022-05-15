#!/bin/bash
# enter your array comparison code here
# initialize arrays a b c
a=(3 5 8 10 6) 
b=(6 5 4 12) 
c=(14 7 5 7)

for A in ${a[@]}
do
  for B in ${b[@]}
  do
    if (( $A == $B ))
    then
      ab[${#ab[@]}]=$A
    fi
  done
done

for AB in ${ab[@]}
do
  for C in ${c[@]}
  do
    if (( $AB == $C ))
    then
      ABC=$AB
    fi
  done
done

echo $ABC