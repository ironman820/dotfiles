#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
PLAYONLINUX=~/.PlayOnLinux

echo '<openbox_pipe_menu>'
echo '<item label="PlayOnLinux"><action name="Execute"><execute>playonlinux</execute></action></item>'
echo '<separator/>'
for file in $(ls $PLAYONLINUX/shortcuts/ -1v); do
	echo "<item label=\"$file\"><action name=\"Execute\"><execute>playonlinux --run \"$file\"</execute></action></item>"
done
echo '</openbox_pipe_menu>'

IFS=$SAVEIFS
