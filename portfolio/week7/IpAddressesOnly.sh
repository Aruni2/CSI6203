#!/bin/bash
#Student Id "10497312"
net_info="$(./IpInfo.sh)"
aadresses=$(echo "$net_info" | sed -n '/IP Address: / P')
echo -e "$aadresses"
