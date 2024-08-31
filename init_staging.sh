#!/usr/bin/bash.exe
set -x
source mingw_toolchain.sh $1

init_staging() {
	if [ -v USE_STAGING ] 
	then
	rm -rf $STAGING_ENV
	mkdir -p $STAGING_ENV/var/lib/pacman/local
	mkdir -p $STAGING_ENV/var/lib/pacman/sync
	# /usr/bin/bash.exe -c "$PACMAN -Syuu bash filesystem mintty pacman"
	fi
}
init_staging
