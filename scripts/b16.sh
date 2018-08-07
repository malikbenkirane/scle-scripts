# requires: sed, sort, fzy, sh
#!/bin/sh -e

DEFAULT_B16_BASEDIR=~/ports/base16-kitty/colors

ls ${BASE16_BASEDIR:-$DEFAULT_B16_BASEDIR} \
	| sed 's/base16-//' \
	| sed 's/\(-256\)\?.conf//' \
	| sort -u \
	| fzy -l 20
