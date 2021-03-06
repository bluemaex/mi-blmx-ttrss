#!/bin/bash
UUID=$(mdata-get sdc:uuid)
DDS=zones/${UUID}/data

if zfs list ${DDS} 1>/dev/null 2>&1; then
	zfs create ${DDS}/config       || true
  
	zfs set mountpoint=/opt/tt-rss/config ${DDS}/config
else
	mkdir /opt/tt-rss/config
fi
