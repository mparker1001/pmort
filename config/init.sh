#!/sbin/runscript
# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License, v2 or
# later
# $Header: /var/cvsroot/gentoo-x86/net-im/bitlbee/files/bitlbee.initd,v 1.3 2011/12/04 21:18:10 radhermit Exp $

DAEMON=/usr/bin/pmort
PIDFILE=/var/run/pmort.pid

start () {
	ebegin "Starting pmort"
	start-stop-daemon --start --quiet --exec ${DAEMON} -- -P ${PIDFILE} ${BITLBEE_OPTS}
	eend $?
}

stop() {
	ebegin "Stopping pmort"
	start-stop-daemon --stop --quiet --pidfile ${PIDFILE}
	eend $?
}
