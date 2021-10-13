#!/bin/bash

set -euo pipefail

echo "---CURRENT BRANCH NAME---"
branch_name=$(git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3)
echo ${branch_name} 

echo "---CURRENT HASH COMMIT---"
hash_commit=$(git rev-parse --short HEAD)
echo ${hash_commit}

echo "---PROJECT VERSION---"
PROJECT_VERSION=${branch_name}-${hash_commit}
echo ${PROJECT_VERSION}
echo ${PROJECT_VERSION} > PROJECT_VERSION.txt
