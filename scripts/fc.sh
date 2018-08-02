# path requirements: fzf
#!/bin/sh -e

fc-list : family | sort -u | fzf
