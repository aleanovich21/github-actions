#!/bin/bash

#set -euo pipefail

source ./functions.sh
value=$(pars_docker_repo ${@})

echo $value
pars_docker_repo