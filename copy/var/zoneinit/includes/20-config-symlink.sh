#!/bin/bash
TTRSS_DIR=/opt/tt-rss

if [ -e "$TTRSS_DIR/config/config.php" ]; then
	rm -rf $TTRSS_DIR/www/install
	ln -sf $TTRSS_DIR/config/config.php $TTRSS_DIR/www/config.php
fi
