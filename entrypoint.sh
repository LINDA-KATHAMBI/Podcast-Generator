#!/bin/bash
echo "================"

git configure --global user.name "${GITHUB_ACTOR}"
git configure --global user.email "${INPUT_EMAIL}"
git configure --global --add safe.directry /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "update feed"
git push --set-upstream origin main


echo "================"
