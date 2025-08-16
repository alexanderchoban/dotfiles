#!/usr/bin/bash

Monitors=$(xrandr | grep -o "^.* connected" | sed "s/ connected//")

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %T")

        echo -n "$DATETIME"
}

# Define Desktop Name
Desktop() {
    bspc query -D -d focused --names
}

# Print the clock

while true; do
	barout=""
  baroutput="%{r} $(Clock) %{l} \uf61a ATG %{c} Desktop $(Desktop) "

        tmp=0
	for m in $(echo "$Monitors"); do
            barout+="%{S${tmp}}$baroutput"
            let tmp=$tmp+1
        done
	echo -e $barout
        sleep 1
done
