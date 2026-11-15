#!/usr/bin/env bash
# Push this deck to GitHub.
# Usage (from Terminal, inside this folder):
#   ./git-submit.sh                      uses an automatic message with the date
#   ./git-submit.sh "Updated Tip 2"      uses your own message

set -euo pipefail

REPO_URL="https://github.com/gingermsnap/AICommunicationDeck.git"
BRANCH="main"

# Always run from the folder this script lives in
cd "$(dirname "$0")"

MSG="${1:-Update deck $(date '+%Y-%m-%d %H:%M')}"

# Keep Mac clutter out of the repo
if [ ! -f .gitignore ]; then
  printf ".DS_Store\n*.zip\n" > .gitignore
fi

# First run only: turn this folder into a git repo connected to GitHub
if [ ! -d .git ]; then
  echo "Setting up git for the first time..."
  git init -q
  git branch -M "$BRANCH"
  git remote add origin "$REPO_URL"
  # If GitHub already has files (for example, uploaded in the browser),
  # build on top of them instead of fighting them.
  if git ls-remote --exit-code --heads origin "$BRANCH" >/dev/null 2>&1; then
    git fetch -q origin "$BRANCH"
    git reset -q --soft "origin/$BRANCH"
  fi
fi

git add -A

if git diff --cached --quiet; then
  echo "Nothing new to push. Your GitHub repo is already up to date."
  exit 0
fi

git commit -q -m "$MSG"
git push -u origin "$BRANCH"

echo ""
echo "Pushed: $MSG"
echo "Live in a minute or two at https://gingermsnap.github.io/AICommunicationDeck/"
