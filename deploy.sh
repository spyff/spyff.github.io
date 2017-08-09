#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
cd _site
rm -rf .git
git init .
git add .
git commit -m "New version"
git remote add origin https://github.com/spyff/spyff.github.io.git
git push -u --force --set-upstream origin master

