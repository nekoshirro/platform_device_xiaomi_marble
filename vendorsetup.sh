#!/bin/bash

if [ ! -d hardware/dolby ]; then
    git clone "https://x-access-token:${GH_TOKEN}@github.com/nekoshirro/platform_hardware_dolby.git" \
        -b 6.6-dolby hardware/dolby
fi
