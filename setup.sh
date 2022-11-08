#!/bin/bash

THIS_DIRECTORY="$(dirname "$(realpath "$0")")"

for file in "${THIS_DIRECTORY}/*"; do
    cp "${file}" "~/.${file}"
done

