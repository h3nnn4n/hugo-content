#!/bin/bash

echo -e "\033[0;32mDeploying to GitHub...\033[0m"

cd public
git checkout master
cd ../

hugo

cd public
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push origin master

cd ..

git add .

git commit -m "$msg"
git push origin master
