#!/bin/bash
target=$1
if test -z "$target" ; then
	echo "$0 swf-html"
	echo "swf-html is empty"
	exit 1
fi

sudo /host/3700x/opt/async-profiler-3.0-linux-x64/bin/asprof -d 12 --fdtransfer -f $1 $(./jps-ForkedMain.sh)
