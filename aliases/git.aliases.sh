#!/usr/bin/env bash

set -e

alias main='git checkout main && git fetch && git pull origin main && git branch --merged main | grep -v "^\* main" | xargs -n 1 -r git branch -d'
