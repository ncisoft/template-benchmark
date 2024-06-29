#!/bin/bash

xjps=$(jps |grep ForkedMain)

jps_len=${#xjps}


if test $jps_len -gt 1; then
	pid=$(echo $xjps|cut -d ' ' -f1)
	echo $pid

fi
