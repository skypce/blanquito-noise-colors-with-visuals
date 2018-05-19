#!/bin/bash
killall play
nvidia-settings -a 'DigitalVibrance=0' -a 'RedBrightness=0' -a 'GreenBrightness=0' -a 'BlueBrightness=0'
play -c 2 -n -q synth white &
nvidia-settings -a 'DigitalVibrance=-1024'
