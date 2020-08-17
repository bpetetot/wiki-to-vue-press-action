#!/bin/sh -l

echo "Hello $GITHUB_REPOSITORY"

mkdir website

cp /package.json "$GITHUB_WORKSPACE/website"

git clone "https://github.com/$GITHUB_REPOSITORY.wiki.git" website

cd website

yarn

echo "---------"
ls
