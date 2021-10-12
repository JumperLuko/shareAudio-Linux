# Set recorder on device
pactl move-source-output $idRecorder $source

# Set playback on device  
pactl move-sink-input $idPlayback $sink

