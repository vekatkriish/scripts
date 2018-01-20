#!/bin/bash
# $1 = giturl; $2 = frombranch ;$3 = tobranch

if [[ "$(git ls-remote --heads $1 $2 | wc -l)" == *"1"* ]]
then
  echo "checkout to $3...."
  git checkout $3
  git merge $2 -m 'feature branch $1 merged'
  echo "ok"
else
  echo "error"
fi