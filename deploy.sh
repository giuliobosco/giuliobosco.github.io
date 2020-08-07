#!/bin/bash

COMMIT_MESSAGE="update site content"

if [ -n "$1" ]; then
    COMMIT_MESSAGE=$1
fi

if [ ! -d "./public" ]; then
    git fetch origin gh-pages
    git checkout gh-pages
    git branch
    git checkout master
    git worktree add -B gh-pages public gh-pages
fi

hugo
cd public && git add --all && git commit -m "$COMMIT_MESSAGE" && git push && cd ..
