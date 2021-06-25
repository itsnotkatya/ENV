#!/bin/bash

echo "Pass a path:"
thispath=$path

defaultPath=/home/$(whoami)/Desktop

if [ -n "$thispath" ]; then
    export my_var=$thispath
else
    echo "Path is empty! Exporting default path ..."
    export my_var=$defaultPath
fi

echo "Exported path: $my_var"

file = "variables.txt"
for var in $(cat $file)
do
echo $var
done
