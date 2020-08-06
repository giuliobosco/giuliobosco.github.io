#!/bin/bash

if [ ! -d "./public" ]; then
    git pull origin gh-pages
    git branch –track gh-pages
    git worktree add -B gh-pages public gh-pages
fi

hugo
cd public && git add --all && git commit -m "Publishing to gh-pages" && git push && cd ..
