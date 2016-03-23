#!/bin/bash

# TODO: improve build via args
hugo -t hugo-zd

git add -A

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin master
git subtree push --prefix=public git@github.com:izdi/tishlbn.git gh-pages
