#!/bin/bash

#Function parsing text files
function pars_docker_repo() {
    echo | sed -n '1p' pipeline_conf ${1}
    echo | sed -n '2p' pipeline_conf ${2}
    echo | sed -n '3p' pipeline_conf ${3}
    echo | sed -n '4p' pipeline_conf ${4}
}