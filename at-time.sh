#!/bin/bash
# 14 june 2015 g. 21:09:06 MSK
while [[ 1 ]]
do
  if [[ `date '+%H'` -eq $1 && `date '+%M'` -eq $2 && `date '+%S'` -eq $3 ]]
  then
      break
  fi
done
