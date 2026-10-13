#!/bin/sh
[ $$ -eq 1 ] && exec dumb-init -- "$0" "$@"

[ -f /root/init.sh ] && [ -x /root/init.sh ] && /root/init.sh

cd

if [ $# -gt 0 ]; then
	"$@"
else
	bash -i -l
fi
