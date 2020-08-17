#!/bin/sh -l

echo "Hello $GITHUB_REPOSITORY"

cp /package.json $GITHUB_WORKSPACE

# git clone "https://github.com/$GITHUB_REPOSITORY.wiki.git"

echo "---------"
ls
