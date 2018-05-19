#!/bin/bash
killall play
nvidia-settings -a 'DigitalVibrance=0' -a 'RedBrightness=0' -a 'GreenBrightness=0' -a 'BlueBrightness=0'
play -c 2 -n -q synth pinknoise &
nvidia-settings -a 'RedBrightness=1' -a 'GreenBrightness=-1' -a 'BlueBrightness=0,5'
