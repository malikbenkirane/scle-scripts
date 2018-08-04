# path requirements: fzy, bash
# fzh.sh - fuzzy history
#!/bin/bash -e

fc -s $(history | fzy | awk '{print $1}')
