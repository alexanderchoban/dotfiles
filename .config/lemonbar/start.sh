#!/usr/bin/bash

Monitors=$(xrandr | grep -o "^.* connected" | sed "s/ connected//")

# Define the clock
Clock() {
        DATETIME=$(date "+%a %b %d, %T")

        echo -n "$DATETIME"
}

# Print the clock

while true; do
	barout=""
	baroutput="%{r} $(Clock) %{l} ATG "

        tmp=0
	for m in $(echo "$Monitors"); do
            barout+="%{S${tmp}}$baroutput"
            let tmp=$tmp+1
        done
	echo $barout
        sleep 1
done
