#!/bin/bash

# Load Module
#read -p "Module Name: " module
module=Discord-Stream
moduleID=$(pactl load-module module-null-sink sink_name=$module)



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
#pactl unload-module $moduleID

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

pactl load-module module-null-sink sink_name=sink_vlc
pactl load-module module-null-sink sink_name=sink_jnt

pactl load-module module-loopback source=microfone sink=sink_jnt latency_msec=5
pactl load-module module-loopback source=sink_vlc.monitor sink=sink_jnt latency_msec=5
pactl load-module module-loopback source=sink_vlc.monitor sink=alsa_output.pci-0000_08_00.4.analog-stereo latency_msec=5

pactl load-module module-remap-source master=sink_jnt.monitor source_name=source_jnt 