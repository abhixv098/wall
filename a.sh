#!/bin/bash

clear

# Define the text to animate
text="HELLO WORLD"

# Function to shift characters to the right
shift_right() {
    echo -n "${text: -1}${text:0:-1}"
}

# Function to shift characters to the left
shift_left() {
    echo -n "${text:1}${text:0:1}"
}

# Main animation loop
while true; do
    clear
    echo "$text"
    sleep 0.1
    text=$(shift_right)
done

