# requires: fzf (or fzy), bash
# fzh.sh - fuzzy history
# 
# I recommend using fzf rather than fzy
#
#!/bin/bash -e

usage()
{
	cat <<-EOF
	fzh - fuzzy history
	usage: fzh [-h|-y]
	  -y uses fzy rather that fzh
	  -h print this message and exit
	EOF
	exit 2
}

test -n "$1" -a "$1" = "-h" && usage
test -n "$1" -a "$1" = "-y" && FZ_CMD=fzy || FZ_CMD=fzf

COMMAND=$(history | sort -r | fzf | awk '{print $1}')

if test -n "$COMMAND"
then
	fc -s $COMMAND
else
	echo 'Aborted ...'
fi
