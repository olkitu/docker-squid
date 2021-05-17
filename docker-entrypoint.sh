#!/bin/sh

# Start squid server and read logs to stdiout
squid && tail -F /var/log/squid/access.log