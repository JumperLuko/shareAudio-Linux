# List all playbacks & IDs
echo -e "\n== Playbacks =="
pactl list sink-inputs | grep -E 'Sink Input #|application.name = "'

# List all recording & IDs (and Pavucontrol)?
echo -e "\n== Recording =="
pactl list source-outputs | grep -E 'Source Output #|application.name = "'

# List all Recorder devices
echo -e "\n== Recorder devices =="
pactl list sources | grep -E 'Source #|Name: '

# List all Playbacks devices
echo -e "\n== Playbacks devices =="
pactl list sinks | grep -E 'Sink #|Name: ' 

# Modules & ID
echo -e "\n== Modules =="
pactl list modules | grep -E 'Module #|Name: |Argument: '


# List all Clients & IDs
#echo -e "\nClients"
#pactl list clients | grep -E 'Client #|application.name = "'