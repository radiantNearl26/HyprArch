#! /bin/bash

if pactl list sink-inputs | grep -q "Sink"; then # if any audio sink is detected (reduces unnescessary logs)
    text=$(playerctl metadata --format '{{trunc(artist,10)}} - {{trunc(title,15)}}')
maxlength=35
    # if the text is longer than the max length, truncate it and add "..."
    if [ ${#text} -gt $maxlength ]; then
        text=${text:0:$maxlength-3}"..."
    fi

    playerctl metadata --format '{"text": "'"$text"'", "tooltip": "{{playerName}} : {{artist}} - {{title}}"}'
fi
