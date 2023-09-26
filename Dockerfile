FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y \
    keepalived \
 && apt-get clean

COPY /skel /

RUN chmod +x init.sh

CMD ["./init.sh"]

# Build specific labels
LABEL maintainer="Benjamin Hudgens <junk@benjamindavid.com>"
LABEL name="keepalived"
LABEL description="keepalived for Ceph on Ubuntu for ARM64 support"
LABEL summary="Provides keepalived on Ubuntu 22.04 for Ceph."
