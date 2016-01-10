#!/bin/sh
netconvert -c circular.netccfg
duarouter --flow-files circular.flow.xml --net-file circular.net.xml --output-file MY.rou.xml
sumo -c circular.sumocfg
