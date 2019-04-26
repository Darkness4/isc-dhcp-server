FROM alpine:latest

RUN apk add --no-cache dhcp

EXPOSE 67 67/udp 68 68/udp

RUN touch /var/lib/dhcp/dhcpd.leases
VOLUME ["/etc/dhcpd.conf"]

ENTRYPOINT ["/usr/sbin/dhcpd", "-d", "--no-pid"]