#!/bin/bash

set -euo pipefail

git tag
#git describe --tags $(git rev-list --tags --max-count=1) | sed -e 's/^v//' > PROJECT_TAG.txt

