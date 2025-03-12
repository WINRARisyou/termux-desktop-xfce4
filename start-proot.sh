#!/bin/bash
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
# Check if a username argument is provided
if [ -z "$1" ]; then
	echo "Usage: $0 <USERNAME>"
	exit 1
fi

# Run the proot-distro command with the provided username
proot-distro login debian --shared-tmp --user "$1"
