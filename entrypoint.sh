#!/bin/sh -l

echo "Hello $GITHUB_REPOSITORY"

git clone "https://github.com/$GITHUB_REPOSITORY.wiki.git"