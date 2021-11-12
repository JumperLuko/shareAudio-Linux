# List all playbacks
echo -e "\n\n==== ====  Playbacks  ==== ===="
pactl list sink-inputs | grep -E 'Sink Input #|application.name = "|node.target = |media.name|object.id|node.latency'

# List all recording (and Pavucontrol)?
echo -e "\n\n==== ====  Recording  ==== ===="
pactl list source-outputs | grep -E 'Source Output #|node.name = |node.target = |media.name|object.id|node.latency"'

# List all Recorder devices
echo -e "\n\n==== ====  Input devices (Recorder)  ==== ===="
pactl list sources | grep -E 'Source #|Name: '

# List all Playbacks devices
echo -e "\n\n==== ====  Output devices (Playbacks)  ==== ===="
pactl list sinks | grep -E 'Sink #|Name: ' 

# Modules
echo -e "\n\n==== ====  Modules  ==== ===="
pactl list modules | grep -E 'Module #|Name: |Argument: |node.name = '


# List all Clients
#echo -e "\n\nClients"
#pactl list clients | grep -E 'Client #|application.name = "'