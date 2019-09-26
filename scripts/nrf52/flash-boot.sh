#!/usr/bin/env bash
#  Flash Mynewt Bootloader

set -e  #  Exit when any command fails.
set -x  #  Echo all commands.

# openocd/bin/openocd -f scripts/nrf52/flash-init.ocd -f interface/stlink.cfg -c "transport select hla_swd" -f target/nrf52.cfg -f scripts/nrf52/flash-boot.ocd

$HOME/openocd/src/openocd \
    -s $HOME/openocd/tcl \
    -f scripts/nrf52/flash-init.ocd \
    -f interface/stlink.cfg \
    -c "transport select hla_swd" \
    -c "set WORKAREASIZE 0" \
    -f target/nrf52.cfg \
    -f scripts/nrf52/flash-boot.ocd
