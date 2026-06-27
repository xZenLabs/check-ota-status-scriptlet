#!/bin/sh
# Name: Check OTA Status
# Author: neura + ZenLabs
# Icon: data:image/png;base64,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
# Created: jan-08-2025
# Modified: jun-27-2026
# Version: 1.3
# Description: This scriptlet checks the status of OTA (Over-The-Air) update binaries on Kindle devices and informs the user whether updates are enabled or blocked.
#
# Changelog:
#   - nov-01-2025: Added support for firmware <=5.10.x by checking for update.bin.tmp.partial folder.
#   - jan-09-2025: Added dynamic touch device detection in order to increase the compatibility across devices.
#   - jan-08-2025: First working version (works on KT4 using event2 device).

# First, determine firmware version to know which OTA blocking method to check
FIRMWARE_VERSION=$(cat /etc/prettyversion.txt | grep -o '[0-9]\+\.[0-9]\+' | head -n 1)
FIRMWARE_MAJOR=$(echo $FIRMWARE_VERSION | cut -d '.' -f 1)
FIRMWARE_MINOR=$(echo $FIRMWARE_VERSION | cut -d '.' -f 2)

# For debug (uncomment if needed)
# echo "[ DEBUG ] Firmware version: $FIRMWARE_VERSION (Major: $FIRMWARE_MAJOR, Minor: $FIRMWARE_MINOR)"

# Check the appropriate OTA blocking method based on firmware version
if [ "$FIRMWARE_MAJOR" -eq 5 ] && [ "$FIRMWARE_MINOR" -le 10 ]; then
    # For firmware <=5.10.x, check for update.bin.tmp.partial folder
    if [ -d "/mnt/us/update.bin.tmp.partial" ]; then
        MESSAGE1="OTA blocking is enabled (<=5.10.x method)."
        MESSAGE2="Folder is blocking updates."
        MESSAGE3="Your jailbreak is safe."
        MESSAGE4="Your Kindle will NOT update."
        ART_IS_CHECKMARK=true
    else
        MESSAGE1="OTA blocking is disabled (<=5.10.x)."
        MESSAGE2="Folder is missing."
        MESSAGE3="Your jailbreak is in danger."
        MESSAGE4="Create update.bin.tmp.partial folder."
        ART_IS_CHECKMARK=false
    fi
else
    # For firmware >=5.11.x, check for renamed OTA binaries
    if [ -f /usr/bin/otaupd.bck ] && [ -f /usr/bin/otav3.bck ]; then
        MESSAGE1="OTA blocking is enabled (>=5.11.x method)."
        MESSAGE2="Your Kindle will NOT update."
        MESSAGE3="Your jailbreak is safe."
        MESSAGE4="Wanna restore OTA? Enable Airplane mode."
        ART_IS_CHECKMARK=true
    elif [ -f /usr/bin/otaupd ] && [ -f /usr/bin/otav3 ]; then
        MESSAGE1="OTA blocking is disabled (>=5.11.x)."
        MESSAGE2="Your Kindle can be updated."
        MESSAGE3="Your jailbreak is in danger."
        MESSAGE4="Rename OTA binaries to keep jailbreak."
        ART_IS_CHECKMARK=false
    else
        MESSAGE1="OTA binaries are corrupted or missing."
        MESSAGE2="Check manually."
        MESSAGE3=""  # No third message
        MESSAGE4=""  # No fourth message
        ART_IS_CHECKMARK=false
    fi
fi

# Function to force a full screen refresh
force_refresh() {
    eips -c > /dev/null 2>&1     # Clear the screen silently
    eips -c > /dev/null 2>&1     # Double clear to ensure full refresh
    sleep 1                      # Use integer value for sleep
}

# Draw large ASCII checkmark starting at given row
# Note: eips drops a string whose first visible char is '#', strips leading
# spaces, and collapses runs of internal spaces to one. So art uses '*' and
# places each cell with its own absolute eips column arg, never via spacing.
draw_checkmark() {
    _r=$1
    eips 13 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 12 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 11 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 10 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips  9 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips  8 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips  1 $_r "*" > /dev/null 2>&1; eips  7 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips  2 $_r "*" > /dev/null 2>&1; eips  6 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips  3 $_r "*" > /dev/null 2>&1; eips  5 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips  4 $_r "*" > /dev/null 2>&1
}

# Draw large ASCII X starting at given row
draw_x() {
    _r=$1
    eips 0 $_r "*" > /dev/null 2>&1; eips 8 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 1 $_r "*" > /dev/null 2>&1; eips 7 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 2 $_r "*" > /dev/null 2>&1; eips 6 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 3 $_r "*" > /dev/null 2>&1; eips 5 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 4 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 3 $_r "*" > /dev/null 2>&1; eips 5 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 2 $_r "*" > /dev/null 2>&1; eips 6 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 1 $_r "*" > /dev/null 2>&1; eips 7 $_r "*" > /dev/null 2>&1; _r=$((_r + 1))
    eips 0 $_r "*" > /dev/null 2>&1; eips 8 $_r "*" > /dev/null 2>&1
}

# Draw the appropriate ASCII art at the given row
draw_art() {
    if [ "$ART_IS_CHECKMARK" = "true" ]; then
        draw_checkmark "$1"
    else
        draw_x "$1"
    fi
}

# Function to detect the correct touch device
detect_touch_device() {
    awk '{
        if ($1 == "Section" && $2 == "\"InputDevice\"") { isInput=1 };
        if ($2 == "\"Device\"" && isInput) { inputDevice=$3; hasInputDevice=1 };
        if ($2 == "\"CorePointer\"" && hasInputDevice && isInput) {
            gsub(/\"/, "", inputDevice);
            print inputDevice
        }
    }' /etc/xorg.conf
}

# Set the correct touch device dynamically
TOUCH_DEVICE=$(detect_touch_device)
if [ -z "$TOUCH_DEVICE" ]; then
    echo "Error: Could not detect touch device."
    exit 1
fi

# Print the detected touch device (uncomment for debugging)
# echo "[ DEBUG ] Detected touch device: $TOUCH_DEVICE"

# Display the messages with forced refresh
force_refresh
eips 0 0 "$MESSAGE1" > /dev/null 2>&1  # Display the first message
eips 0 1 "$MESSAGE2" > /dev/null 2>&1  # Display the second message
if [ -n "$MESSAGE3" ]; then            # Check if there's a third message
    eips 0 2 "$MESSAGE3" > /dev/null 2>&1
fi
if [ -n "$MESSAGE4" ]; then            # Check if there's a fourth message
    eips 0 3 "$MESSAGE4" > /dev/null 2>&1
fi
draw_art 7
eips 0 17 "Tap the screen to exit." > /dev/null 2>&1  # Display instructions

# Wait for a tap
while :; do
    # Refresh the screen periodically to keep messages visible
    force_refresh
    eips 0 0 "$MESSAGE1" > /dev/null 2>&1
    eips 0 1 "$MESSAGE2" > /dev/null 2>&1
    if [ -n "$MESSAGE3" ]; then
        eips 0 2 "$MESSAGE3" > /dev/null 2>&1
    fi
    if [ -n "$MESSAGE4" ]; then
        eips 0 3 "$MESSAGE4" > /dev/null 2>&1
    fi
    draw_art 7
    eips 0 17 "Tap the screen to exit." > /dev/null 2>&1

    # Wait for a touch event to occur
    dd if="$TOUCH_DEVICE" bs=16 count=1 2>/dev/null | grep -q .
    if [ $? -eq 0 ]; then
        break
    fi
    sleep 1  # Reduce CPU usage
done

# Clear the screen and return to home
force_refresh
lipc-set-prop com.lab126.appmgrd start app://com.lab126.booklet.home
