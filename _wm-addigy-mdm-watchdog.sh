#!/bin/sh

# Check if mdm-watchdog is installed. If it is not, exit without running
if [ ! -f /usr/local/bin/mdm-watchdog ]; then
	exit 25
fi

# Read existing json file
WATCHDOGJSON="$(cat /Library/Application\ Support/mdm-watchdog/state.json | sed 's/[{}"]//g' | sed 's/,/\'$'\n''/g')"

# Set variable for log show, to see details of the last 2 hours
WATCHDOGLOG="$(log show --style syslog --predicate 'process == "mdm-watchdog"' -last 2h)"

# Report only... no alerting
echo "mdm-watchdog is installed. \n$WATCHDOGJSON\n\nMore details from the last 2 hours of log entries:\n$WATCHDOGLOG"
exit 0