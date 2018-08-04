# path requirements: fzy, bash
# fzh.sh - fuzzy history
#!/bin/bash -e

COMMAND=$(history | sort -r | fzy | awk '{print $1}')

if test -n "$COMMAND"
then
	fc -s $COMMAND
else
	echo 'Aborted ...'
fi
