#!/bin/sh

#wait for the desktop to settle
# sleep 5

#gets the hardware id's of all mice and touchpads plugged into the system
hardwareIds=$(xinput | grep -i 'Logitech\|mouse\|touchpad' | awk '{print substr($(NF-3),4)}')

#turn off mouse and touchpad acceleration
for i in $hardwareIds
do
xinput set-prop ${i} 'Device Accel Profile' -1
xinput set-prop ${i} 'Device Accel Velocity Scaling' 1
done

# increase touchpad speed
hardwareIds_touchpad=$(xinput | grep -i 'touchpad' | awk '{print substr($(NF-3),4)}')
for i in $hardwareIds_touchpad
do
xinput set-prop ${i} 'Device Accel Constant Deceleration' 1
done


