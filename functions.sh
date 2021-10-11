#!/bin/bash

#Function parsing text files
function pars_docker_repo() {
    echo | sed -n '1p' pipeline_conf ${1}
    echo | sed -n '2p' pipeline_conf ${2}
    echo | sed -n '3p' pipeline_conf ${3}
    echo | sed -n '4p' pipeline_conf ${4}
}

# function test_parsing() {
#     filename=pipeline_conf
#     while read line;
#     do
#     echo $line
#     done < $filename
# }

function pars_file(){
    permanent_folder=$1
    temporary_folder=$2
    value_file_path=$3
    sudo mkdir ${permanent_folder}
    sudo mkdir ${temporary_folder}
    sed -i '/^#/d' ${value_file_path}
    while read line || [[ -n "$line" ]]; do
        FILE_NAME=$(echo $line | awk '{print $1}')
        echo $line | awk '{print $3}' > ${temporary_folder}$FILE_NAME.txt
    done < ${value_file_path}
    sudo mv ${temporary_folder}* ${permanent_folder}
    #rmdir ${temporary_folder}
}