#!/bin/bash

VERSION="$(head -1 Dockerfile | cut -d ':' -f 2)"
COMMIT_MESSAGE="bump v$VERSION"

echo -n "commit and push '$COMMIT_MESSAGE' [y/N]: "
read OK

case $OK in
  [Yy]* )
    set -x
    git add .
    git commit -S -m "$COMMIT_MESSAGE"
    git tag -a "v$VERSION" -m "$COMMIT_MESSAGE"
    git push --force
    git push origin "v$VERSION" --force
    ;;
  * )
    echo "skipped"
    exit 1
    ;;
esac
