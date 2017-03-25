# Blah
FROM ubuntu:16.04
MAINTAINER Henry Burroughs <henry@technologywin.com>
RUN apt-get update && apt-get install -y \
	cups \
	hp-ppd \
	openprinting-ppds \
	printer-driver-all \
	foomatic-db-engine \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/cups","/var/log/cups","/var/spool/cups","/var/cache/cups"]

CMD ls 

EXPOSE 631

