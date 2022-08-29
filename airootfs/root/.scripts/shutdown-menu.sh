#!/bin/bash
INPUT=$(echo -e "logout\nshutdown\nreboot" | dmenu -i -nb '#282c34' -sf '#282c34' -sb '#56b6c2' -nf '#58b6c2' -l 3 -fn 'Hack-11:style=Regular')
case "$INPUT" in
	logout) i3-msg exit & ;;
	shutdown) shutdown now & ;;
	reboot) reboot & ;;
esac



