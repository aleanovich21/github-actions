#!/bin/bash

set -euo pipefail

git describe --tags $(git rev-list --tags --max-count=1) | sed -e 's/^v//' > PROJECT_VERSION.txt

sudo mkdir /version
sudo mv ./PROJECT_VERSION.txt /version