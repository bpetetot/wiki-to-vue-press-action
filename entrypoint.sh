#!/bin/sh -l

echo "Hello $GITHUB_REPOSITORY"

cp /package.json $GITHUB_WORKSPACE

yarn

git clone "https://github.com/$GITHUB_REPOSITORY.wiki.git" $(pwd)

echo "---------"
ls
