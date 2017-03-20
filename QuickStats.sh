#!/bin/bash
echo "Gathering system info."
echo "Hello, $USER"
echo
echo "Today's date is `date`, this is week `date +"%V"`."
echo
echo "The following user(s) are currently connected:"
w | cut -d " " -f 1 - | grep -v USER | sort -u
echo
echo "This is `uname -s` running on a `uname -m` processor."
echo
echo "System uptime information:"
uptime
