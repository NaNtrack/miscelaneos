#!/bin/bash

if [ -z "$1" ]; then 
  echo Usage: $0 branch_name
  exit;  
fi

git fetch origin
git checkout master
git merge origin/master
git checkout $1
git rebase origin/master

