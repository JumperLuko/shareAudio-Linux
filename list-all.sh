# List all playbacks & IDs
echo -e "\nPlaybacks"
pactl list sink-inputs | grep -E 'Sink Input #|application.name = "'

# List all recording & IDs (and Pavucontrol)?
echo -e "\nRecording"
pactl list source-outputs | grep -E 'Source Output #|application.name = "'

# List all Clients & IDs
echo -e "\nClients"
pactl list clients | grep -E 'Client #|application.name = "'