# requires: fzf
#!/bin/sh -e

fc-list : family | sort -u | fzy -l 40
