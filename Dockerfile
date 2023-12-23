FROM debian:bookworm-slim

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y glusterfs-server \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Preserve group etc for people who want to mount glusterd on the host
RUN cp -r /var/lib/glusterd /var/lib/glusterd.default

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
