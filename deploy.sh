#!/bin/bash

if [ ! -d "./public" ]; then
    git fetch origin gh-pages
    git checkout gh-pages
    git checkout master
    git worktree add -B gh-pages public gh-pages
fi

hugo
cd public && git add --all && git commit -m "Publishing to gh-pages" && git push && cd ..
