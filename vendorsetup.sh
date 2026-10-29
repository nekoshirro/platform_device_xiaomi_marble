#!/bin/bash

if [ ! -d "hardware/dolby" ]; then
    git clone https://github.com/Evolution-X-Devices/hardware_dolby.git \
        -b cnb hardware/dolby
fi
