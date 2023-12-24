# Glusterfs image
A simple image with the glusterd daemon based on debian.

Modifications:
 - It replaces the weird hostnames when using gluster with k8s due to the ptr entries
 - Copies the default groups and hooks to `/var/lib/glusterd`
