#!/bin/sh
if [ -z "$TARGET_LOCATION" ]
then
  echo "You must set the TARGET_LOCATION environment variable"
  exit 1
fi
echo 'defaults' > /etc/haproxy/haproxy.cfg
echo '   timeout connect 10s' >> /etc/haproxy/haproxy.cfg
echo '   timeout client 1m' >> /etc/haproxy/haproxy.cfg
echo '   timeout server 1m' >> /etc/haproxy/haproxy.cfg
echo '' >> /etc/haproxy/haproxy.cfg
echo 'frontend http' >> /etc/haproxy/haproxy.cfg
echo '   bind *:80' >> /etc/haproxy/haproxy.cfg
echo '   mode http' >> /etc/haproxy/haproxy.cfg
echo "   http-request redirect code 303 location ${TARGET_LOCATION}" >> /etc/haproxy/haproxy.cfg
echo '' >> /etc/haproxy/haproxy.cfg
exec /usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg
