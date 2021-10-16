# List all playbacks & IDs
echo -e "\n\n==== ====  Playbacks  ==== ===="
pactl list sink-inputs | grep -E 'Sink Input #|application.name = "'

# List all recording & IDs (and Pavucontrol)?
echo -e "\n\n==== ====  Recording  ==== ===="
pactl list source-outputs | grep -E 'Source Output #|application.name = "'

# List all Recorder devices
echo -e "\n\n==== ====  Input devices (Recorder)  ==== ===="
pactl list sources | grep -E 'Source #|Name: '

# List all Playbacks devices
echo -e "\n\n==== ====  Output devices (Playbacks)  ==== ===="
pactl list sinks | grep -E 'Sink #|Name: ' 

# Modules & ID
echo -e "\n\n==== ====  Modules  ==== ===="
pactl list modules | grep -E 'Module #|Name: |Argument: '


# List all Clients & IDs
#echo -e "\n\nClients"
#pactl list clients | grep -E 'Client #|application.name = "'