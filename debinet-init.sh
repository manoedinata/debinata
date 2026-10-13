#!/bin/sh
[ $$ -eq 1 ] && exec dumb-init -- "$0" "$@"

[ -f /root/init.sh ] && [ -x /root/init.sh ] && /root/init.sh

cd

if [ $# -gt 0 ]; then
	exec "$@"
elif [ -t 0 ]; then
	exec bash -i -l
else
	# No command given and no tty on stdin (e.g. GNS3 starting the
	# container detached). An interactive shell would hit EOF on a
	# closed stdin and exit immediately, taking the container down
	# with it. Stay alive instead so the console (opened separately,
	# e.g. via `docker exec`) has something to attach to.
	exec tail -f /dev/null
fi
