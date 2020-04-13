#!/bin/bash
keys=`xmodmap -pke | egrep -e 'semicolon|apostrophe|bracketleft|Alt_R'`
[ -n "`echo $keys | grep semicolon`" ] && xmodmap -e 'keysym semicolon = semicolon colon ae AE'
[ -n "`echo $keys | grep apostrophe`" ] && xmodmap -e 'keysym apostrophe = apostrophe quotedbl oslash Ooblique'
[ -n "`echo $keys | grep bracketleft`" ] && xmodmap -e 'keysym bracketleft = bracketleft braceleft aring Aring'
[ -n "`echo $keys | grep Alt_R`" ] && xmodmap -e 'keysym Alt_R = Mode_switch' && xmodmap -e 'add mod5 = Mode_switch'
