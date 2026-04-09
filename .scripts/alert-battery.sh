#!/bin/bash

# Battery thresholds for notifications (change as needed)
LOW_THRESHOLD=20
CRITICAL_THRESHOLD=10
EMERGENCY_THRESHOLD=5

# Get current battery percentage using /sys/class/power_supply

BATTERY_STATUS=$(cat /sys/class/power_supply/BAT0/status)
BATTERY_CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

# Check if battery percentage is below the low threshold
if [ "$BATTERY_CAPACITY" -le "$LOW_THRESHOLD" ] && [ "$BATTERY_CAPACITY" -gt "$CRITICAL_THRESHOLD" ]; then
# Display a low battery notification
    notify-send "Warning!!" "Battery Low! Battery is at ${BATTERY_CAPACITY}%" -i "battery-caution"
fi

# Check if battery percentage is below the critical threshold
if [ "$BATTERY_CAPACITY" -le "$CRITICAL_THRESHOLD" ] && [ "$BATTERY_CAPACITY" -gt "$EMERGENCY_THRESHOLD" ]; then
# Display a critical battery notification
    notify-send "CrItIcAl!!" "Almost Empty! Battery is at ${BATTERY_CAPACITY}%!" -i "battery-empty"
fi

# Check if battery percentage is below the emergency threshold
if [ "$BATTERY_CAPACITY" -le "$EMERGENCY_THRESHOLD" ]; then
# Display an emergency battery notification
    notify-send "EMERGENCY!!" "Battery is at ${BATTERY_CAPACITY}%! Plug in immediately!" -i "battery-missing"
fi
