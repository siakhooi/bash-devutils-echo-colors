#!/bin/sh
set -e

. ./release.env

if [[ -n $ISSUE_TO_CLOSE ]]; then
  GIT_MESSAGE="$RELEASE_TITLE, Close $ISSUE_TO_CLOSE"
else
  GIT_MESSAGE="$RELEASE_TITLE"
fi

set -x

git commit -m "$GIT_MESSAGE"

git push
