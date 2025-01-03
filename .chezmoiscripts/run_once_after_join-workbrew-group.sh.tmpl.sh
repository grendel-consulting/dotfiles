#!/usr/bin/env bash
set -euo pipefail

sudo dseditgroup -o edit -a "$(whoami)" -t user workbrew_users
