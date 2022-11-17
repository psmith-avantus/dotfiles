#!/bin/bash

THIS_DIRECTORY="$(dirname "$(realpath "$0")")"

for file in "${THIS_DIRECTORY}/to_install/"*; do
    new_file="/root/.$(basename ${file})"
    if [ -f "${new_file}" ]; then
        cat "${file}" >> ${new_file}
    else
        cp "${file}" "/root/.$(basename ${file})"
    fi
done

