#!/bin/bash

echo -e "\033[0;32mDeploying to GitHub...\033[0m"

cd public
git checkout master

echo -e "\033[0;32mUpdading loopy-dist...\033[0m"
echo -e "\033[0;32mRemoving old loopy-dist...\033[0m"
rm -rfv loopy-dist
echo -e "\033[0;32mMaking loopy-dist folder...\033[0m"
mkdir -vp loopy-dist
cd loopy-dist
echo -e "\033[0;32mCopying new files...\033[0m"
cp -rv ~/progs/games/loopy/builds/webgl/* .
cd ../
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
