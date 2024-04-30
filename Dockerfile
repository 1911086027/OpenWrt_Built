FROM scratch

EXPOSE 22 80 443

ADD *rootfs.tar.gz /

ENTRYPOINT ["/sbin/init"]