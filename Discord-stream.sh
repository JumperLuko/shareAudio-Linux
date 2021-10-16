#!/bin/bash

read "This is draft, please not run that yet"
read "not click enter, will mess everything up"
read "You know, more one enter and CATCHAUM"

# Load Module
#read -p "Module Name: " module
#module=Discord-Stream
#moduleID=$(pactl load-module module-null-sink sink_name=$module)
pactl load-module module-null-sink sink_name=Virtual1

# Create Jumper loopback input
pactl load-module module-loopback source=alsa_input.pci-0000_08_00.4.analog-stereo sink=Virtual1

# Create Jumper loopback output
pactl load-module module-loopback source=Virtual1.monitor sink=alsa_output.pci-0000_08_00.4.analog-stereo.monitor

# List devices
#pactl list sources | grep Name:

# List devices input
#pactl list sources | grep Name: | grep input

# List Outputs
#pactl list sinks | grep Name: 

#Unload Module
pactl unload-module $moduleID

#262144
#262145
#262146
#262147

# Jumper mic
#alsa_input.pci-0000_08_00.4.analog-stereo

# Jumper output
#alsa_output.pci-0000_08_00.4.analog-stereo.monitor

# List IDs
#pactl list modules | grep "Module #"

# Set Playback videos (id 72) to sink_vlc
pactl move-sink-input 72 sink_vlc

# Set recording Sound Recorder (id 234) to sink_vlc.monitor
pactl move-source-output 234 sink_vlc.monitor

