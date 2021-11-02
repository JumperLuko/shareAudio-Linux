# Jumper fast work

# Create virtual devices to capture audio
pactl load-module module-null-sink sink_name=App_capture sink_properties=device.description="App(capture)"
pactl load-module module-null-sink sink_name=AppsMic_mix sink_properties=device.description="AppsMic(mix)"
#pactl load-module module-pipe-source source_name=Mic_capture
#pactl load-module module-null-sink sink_name=null

# Capture my microphone
# My input device > AppsMic_mix
pactl load-module module-loopback source=PulseEffects_mic.monitor sink=AppsMic_mix latency_msec=20

# App_capture > AppsMic_mix
pactl load-module module-loopback source=App_capture.monitor sink=AppsMic_mix latency_msec=20

# Me Listen App
# App_capture > My output device
pactl load-module module-loopback source=App_capture.monitor sink=alsa_output.pci-0000_08_00.4.analog-stereo latency_msec=20

# Transfer final sound from playback to recording
# AppsMic_mix > AppsMic_mix-source 
pactl load-module module-remap-source master=AppsMic_mix.monitor source_name=AppsMic_mix-source 

# Extra: Transfer app sound to recording
# AppsMic_mix > AppsMic_mix-source 
pactl load-module module-remap-source master=App_capture.monitor source_name=App_capture-source 