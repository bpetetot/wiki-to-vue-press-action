#!/bin/sh -l

echo "Hello $GITHUB_REPOSITORY"

npx create-vuepress website

git clone "https://github.com/$GITHUB_REPOSITORY.wiki.git"

echo "---------"
ls
echo "---------"
ls website
echo "---------"
