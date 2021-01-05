#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

echo '<openbox_pipe_menu>'
echo '<item label="VirtualBox"><action name="Execute"><execute>virtualbox</execute></action></item>'
echo '<separator/>'
for file in $(vboxmanage list -s vms); do
	NAME=$(echo $file | sed 's/"\([^"]*\)".*/\1/')
	VUID=$(echo $file | sed 's/"[^"]*" //')
	echo "<item label=\"$NAME\"><action name=\"Execute\"><execute>vboxmanage startvm $VUID</execute></action></item>"
done
echo '</openbox_pipe_menu>'

IFS=$SAVEIFS
