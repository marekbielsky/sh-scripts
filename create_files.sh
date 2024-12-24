#!/bin/bash

output_dir=$1
file_prefix=$2
task_from=$3
task_to=$4

if [ -z "$output_dir" ] || [ -z "$file_prefix" ] || [ -z "$task_from" ] || [ -z "$task_to" ]; then
    echo "Usage: $0 <output_dir> <file_prefix> <task_from> <task_to>"
    exit 1
fi

mkdir -p "$output_dir"

for i in $(seq $task_from $task_to); do
    file_path="$output_dir/${file_prefix}$i.c"
    executable_path="$output_dir/${file_prefix}$i"

    cat <<EOL > "$file_path"
/* 
 * File: ${file_prefix}$i.c
 * Description: This is a template for C files.
 * Author: Marek Bielski (https://github.com/marekbielsky)
 * Date: $(date +%Y-%m-%d)
 */

#include <stdio.h>

int main() {
    printf("This is ${file_prefix}$i.c\n");
    return 0;
}
EOL

    gcc -o "$executable_path" "$file_path"
done