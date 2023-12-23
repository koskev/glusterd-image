#!/bin/bash

# Fix stupid ptr
sed -E -i 's/^hostname1=[0-9]{1,3}-[0-9]{1,3}-[0-9]{1,3}-[0-9]{1,3}\./hostname1=/g' /var/lib/glusterd/peers/*

# Copy default config (groups/hooks) to (possibly mounted) gluster dir
cp -r /var/lib/glusterd.default/ /var/lib/glusterd/

/usr/sbin/glusterd -p /var/run/glusterd.pid -N -l /dev/stdout $@
