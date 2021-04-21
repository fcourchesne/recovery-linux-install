#!/bin/sh
cheat.sh update-all
pip install -U pip
nvim -c "PlugUpdate| quit | qa!"
nvim -c "PlugUpgrade| quit | qa!"
