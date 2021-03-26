#!/bin/bash
p2=$(python2 -V 2>&1 | awk '{print$2}')		
p3=$(python3 -V 2>&1 | awk '{print$2}')
if [[ $p3 > $p2 ]]; then
echo Python $p3 is better Python $p2 , because Python $p3 syntax is simpler and easily understandable whereas Python $p2 syntax is comparatively difficult to understand. Python $p3 default storing of strings is Unicode whereas Python $p2 stores need to define Unicode string value with u.
fi;

