#!/bin/sh

#wait for the desktop to settle
# sleep 5

#gets the hardware id's of all mice plugged into the system
hardwareIds=$(xinput | grep -i Logitech | awk '{print substr($(NF-3),4)}')

#turn off mouse acceleration
for i in $hardwareIds
do
xinput set-prop ${i} 'Device Accel Profile' -1
xinput set-prop ${i} 'Device Accel Velocity Scaling' 1
done


