#!/bin/bash

THIS_DIRECTORY="$(dirname "$(realpath "$0")")"

for file in "${THIS_DIRECTORY}/to_install/"*; do
    cp "${file}" "/root/.$(basename ${file})"
done

