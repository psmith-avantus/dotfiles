#!/bin/bash

this_directory="$(dirname "$(realpath "$0")")"

# We search for all files in the to_install/ directory of this repo.
for file in "${this_directory}/to_install/"*; do
    # And then determine a new location for that file (${HOME}/.${file name})
    new_file="${HOME}/.$(basename ${file})"
    
    # If the file already exists in the destination location,
    if [ -f "${new_file}" ]; then
        # We append to the end of the existing file.
        cat "${file}" >> "${new_file}"
    else
        # Otherwise we just copy our file over.
        cp "${file}" "${new_file}"
    fi
done

