#!/bin/bash

# Retrieve the names of the Wacom tablet and pad from xsetwacom list devices
WACOM_DEVICE=$(xsetwacom --list devices | grep  "STYLUS" | awk -F'\t' '{print $2}' | awk -F': ' '{print $2}')
WACOM_PAD=$(xsetwacom --list devices | grep "PAD" | awk -F'\t' '{print $2}' | awk -F': ' '{print $2}')

# Check if devices were found
if [[ -z "$WACOM_DEVICE" || -z "$WACOM_PAD" ]]; then
    echo "Error: Wacom device or pad not found."
    exit 1
fi

# Function to configure the Wacom tablet
configure_wacom() {
    echo "Configuring Wacom Tablet..."

    xsetwacom set "$WACOM_DEVICE" ResetArea

    xsetwacom set "$WACOM_PAD" Button 1 "key +ctrl"
    xsetwacom set "$WACOM_PAD" Button 2 "key +super"

    # Set cursor movement mode to absolute
#    xsetwacom set "$WACOM_PAD" Mode "absolute"

    echo "Configuration complete!"
}

# Main execution
configure_wacom

exit 0

