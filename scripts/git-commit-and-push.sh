#!/bin/sh
set -e

. ./release.env

if [ $ISSUE_TO_CLOSE == ""]; then
  GIT_MESSAGE="$RELEASE_TITLE"
else
  GIT_MESSAGE="$RELEASE_TITLE, Close $ISSUE_TO_CLOSE"
fi

echo $GIT_MESSAGE
exit 
set -x

git commit -m "$GIT_MESSAGE"

git push
