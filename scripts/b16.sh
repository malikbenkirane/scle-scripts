# requires: sed, sort, fzy, sh
#!/bin/sh -e

DEFAULT_B16_BASEDIR=~/ports/base16-xresources/xresources/
MODE=Xresources

ls ${BASE16_BASEDIR:-$DEFAULT_B16_BASEDIR} \
	| sed 's/base16-//' \
	| sed "s/\(-256\)\?.${MODE}//" \
	| sort -u \
	| fzy -l 20
