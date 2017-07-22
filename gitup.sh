#!/bin/bash

# Add recently changed files
git add *

# Commit with message provided by the user
git commit -m "$1"

# Push
git push -u origin master


# For better use copy this file:
# sudo cp gitup.sh /usr/bin/gitup

