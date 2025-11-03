#!/bin/bash
# Start GNOME Keyring and export env variables
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets,ssh,gpg)
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
