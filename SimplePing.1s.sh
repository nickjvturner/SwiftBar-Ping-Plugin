#!/bin/bash

# <bitbar.title>SimplePing</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>nickjvturner</bitbar.author>
# <bitbar.author.github>nickjvturner</bitbar.author.github>
# <bitbar.desc>Every Second Ping, monospaced, padded to 3x characters</bitbar.desc>
# <bitbar.abouturl>https://nickjvturner.com</bitbar.abouturl>

# <swiftbar.hideAbout>true</swiftbar.hideAbout>
# <swiftbar.hideRunInTerminal>true</swiftbar.hideRunInTerminal>
# <swiftbar.hideLastUpdated>true</swiftbar.hideLastUpdated>
# <swiftbar.hideDisablePlugin>false</swiftbar.hideDisablePlugin>
# <swiftbar.hideSwiftBar>false</swiftbar.hideSwiftBar>

# Configuration
FONT="size=16 font=Menlo"


MYPING=`ping -c 1 "google.com" | sed -En '/time=/{s!^.+time=([0-9]*)\..+!\1!;p;}'`
if [ "$MYPING" == "" ]; then
  printf -v MYPING "%03d" "0"
else
  printf -v MYPING "%03d" $MYPING
fi

echo "$MYPING|$FONT
---
SimplePing"