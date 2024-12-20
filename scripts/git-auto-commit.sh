#!/bin/bash

# Check if a commit message was provided as an argument
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <commit-message> <remote-repo>"
  exit 1
fi

# Set the commit message from the first argument
COMMIT_MESSAGE="$1"
REMOTE_REPO="$2"

# Navigate to the Git repository root (optional, adjust if needed)
# cd /path/to/your/repo

# Add all changes to the staging area
git add .

# Commit the changes with the provided commit message
git commit -m "$COMMIT_MESSAGE"

# # Push the changes to the remote repository
git push $REMOTE_REPO

# # Inform the user that the script has completed
echo "Changes have been added, committed, and pushed with message: '$COMMIT_MESSAGE'"