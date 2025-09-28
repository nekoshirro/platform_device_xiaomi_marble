#!/bin/bash

if [ -z "${GH_TOKEN:-}" ]; then
    echo "GH_TOKEN: EMPTY"
    git clone https://github.com/nekoshirro/android_hardware_dolby.git \
        -b aospa hardware/dolby
else
    echo "GH_TOKEN: LOADED"
    git clone "https://x-access-token:${GH_TOKEN}@github.com/nekoshirro/platform_hardware_dolby.git" \
        -b lunaris-m3e hardware/dolby
fi
