FROM alpine:latest

RUN apk add --no-cache dhcp

RUN touch /var/lib/dhcp/dhcpd.leases
VOLUME ["/etc/dhcpd.conf"]

ENTRYPOINT ["/usr/sbin/dhcpd", "-d", "--no-pid"]