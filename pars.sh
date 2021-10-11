#!/bin/bash

#set -euo pipefail

source ./functions.sh

# pars_docker_repo 
# test_parsing
pars_file /secret/ ./secrets/ ./pipeline_conf
