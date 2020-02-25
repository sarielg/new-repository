#!/bin/bash
#add fix to exercise6-fix here
#echo ${@: -1}
#echo $#
target_server=server1
files=( "$@" )
len=${#files[@]}
target_path=${files[$(( $len - 1 ))]}
total_size=0
for (( i=0; i<len-1; i++ ))
do
        #echo ${files[$(( $len - 1 ))]}
        echo $target_path
        source_file=${files[$i]}
        echo $source_file
        #size=$(/usr/bin/wc -c $source_file)
        #echo $size
        file_size=$(($(sudo wc -c < "$source_file")))
        #echo $size
        #size=$(($(wc -c < "$source_file") +7))
        #echo $file_size
        total_size=$(( total_size + file_size))
        sudo scp $source_file root@$target_server:$target_path
done
echo $total_size
