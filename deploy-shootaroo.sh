#!/bin/bash

echo -e "\033[0;32mDeploying to GitHub...\033[0m"

cd public
git checkout master

echo -e "\033[0;32mUpdading shootaroo-dist...\033[0m"
mkdir -vp shootaroo-dist
cd shootaroo-dist
echo $(pwd)
git checkout master
rm -rf *
cp -r ~/progs/Shootaroo/builds/webgl/app/* .
git add .
git commit -m'version bump'
git push
cd ../
echo -e "\033[0;32mFinished shootaroo-dist...\033[0m"

git add .

cd ../

hugo

cd public

git add .

# Commit changes.
msg="rebuilding site `date` with shootaroo update"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push origin master

cd ..

git add .

git commit -m "$msg"
git push origin master
