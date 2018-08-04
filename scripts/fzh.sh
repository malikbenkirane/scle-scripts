# path requirements: fzy, bash
# fzh.sh - fuzzy history
#!/bin/bash -e

eval "$(history | fzy | sed 's/\s*[0-9]\+\s*//; s/\"/\\\"/g')"
