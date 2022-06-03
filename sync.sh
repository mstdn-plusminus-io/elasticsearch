#!/bin/bash

VERSION="$(head -1 Dockerfile | cut -d ':' -f 2)"
COMMIT_MESSAGE="bump v$VERSION"

echo -n "commit and push '$COMMIT_MESSAGE' [y/N]: "
read OK

case $OK in
  [Yy]* )
    git add .
    git commit -S -m "$COMMIT_MESSAGE"
    git push
    ;;
  * )
    echo "skipped"
    exit 1
    ;;
esac