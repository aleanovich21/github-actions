#!/bin/bash

# Function parsing text files
function pars_file(){
    temporary_folder=$1
    value_file_path=$2
    mkdir ${temporary_folder}
    while read line || [[ -n "$line" ]]; do
        FILE_NAME=$(echo $line | awk '{print $1}')
        echo $line | awk '{print $3}' > ${temporary_folder}$FILE_NAME.txt
    done < ${value_file_path}
}
