#!/bin/bash

echo -e "\033[0;32mDeploying to GitHub...\033[0m"

cd public
git checkout master

echo -e "\033[0;32mUpdading loopy-dist...\033[0m"
rm -rfv loopy-dist
mkdir -vp loopy-dist
cp -r ~/progs/games/loopy/builds/webgl/* loopy-dist/
echo -e "\033[0;32mFinished loopy-dist...\033[0m"

git add .

cd ../

hugo

cd public

git add .

# Commit changes.
msg="rebuilding site `date` with loopy-dist"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"
git push origin master

cd ..

git add .

git commit -m "$msg"
git push origin master
