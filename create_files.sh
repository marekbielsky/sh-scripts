#!/bin/bash

ps_number=$1
task_from=$2
task_to=$3

if [ -z "$ps_number" ] || [ -z "$task_from" ] || [ -z "$task_to" ]; then
    echo "Usage: $0 <ps_number> <task_from> <task_to>"
    exit 1
fi

mkdir -p ./ps$ps_number/zadania

for i in $(seq $task_from $task_to); do
    file_path="./ps$ps_number/zadania/zadanie$i.c"
    executable_path="./ps$ps_number/zadania/zadanie$i"

    cat <<EOL > "$file_path"
#include <stdio.h>

int main() {
    printf("To jest zadanie$i.c\n");
    return 0;
}
EOL

    gcc -o "$executable_path" "$file_path"
done