#!/bin/bash

set -euo pipefail

source ./functions.sh

echo "---CURRENT BRANCH NAME---"
branch_name='git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3'
echo ${branch_name}

echo "---CURRENT HASH COMMIT---"
hash_commit='git rev-parse --short HEAD'
echo ${hash_commit}

echo "---PROJECT VERSION---"
app_version $branch_name $hash_commit
#sudo mkdir /version
#sudo mv ./PROJECT_VERSION.txt /version/