# requires: sh, mcee (requires: python3), less
# about mcee: https://github.com/malikbenkirane/mcee.git
#!/bin/sh -e

export LESS="--chop-long-lines --ignore-case"
PREFIX=~/recess/devel/mcee

MC_PYTHON=$PREFIX/venv/bin/python
MC_SCLI=$PREFIX/scli.py
mc="$MC_PYTHON $MC_SCLI"

# launch mcee default action in less, if no args
if test "$#" -lt 1
then
	eval $mc | less
	exit 0
fi

# otherwise, lauch mcee and pass all args
cmd="$mc  '$@'"
echo $cmd | sh
