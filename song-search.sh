#!/bin/bash
IFS="$(printf '\n')";
echo 'Input name of artist or song title you want to search: ';
read -e tittle;
output=$(find /insert/path/here -type f -exec grep -ioHP '[^"\{\}]*"title":"([^"]+)"' {} \; | grep $tittle | sed 's/\.json//g' | tr ':,' ' ' | cut -d\/ -f5 | awk -F\" '{ print $1,$4}')
echo $output;
