# requires: bash, alacritty, b16
#!/bin/bash -e

# the script update ALACRITTY_CONFIG with colors within COLORSCHEME
# and COLORSCHEME is the absolute path to the Xresources file
ALACRITTY_CONFIG=~/.alacritty.yml
# TODO add support for other colorschemes
# start with renaming COLORSDIR with COLORSDIRS 
COLORSDIR=~/ports/base16-xresources/xresources
COLORSCHEME=${COLORSDIR}/base16-$(b16).Xresources

# XXX
# only compatible with base16 colorschemes
# VIMCOLORS=~/.vimcolors
# if [ -n "$VIMCONFIG" ]; then
# 	sed -n "/\s*[^"]colo $(basename $COLORSCHEME .Xresources)/" $VIMCOLORS

colors=(black red green yellow blue magenta cyan white)

trim_colon()
{
	echo "${1//:}"
}

get_colors()
{
	COLOR0=()
	COLOR8=()

	count=0
	cpp "$1" | grep color[0-8] | while read -r line; do
		x=($(trim_colon "${line##*color}"))
		if [ ${x[0]} -lt 8 ]; then
			COLOR0=(${COLOR0[@]} ${x[1]})
		else
			COLOR8=(${COLOR8[@]} ${x[1]})
		fi
		if [ $((count++)) -eq 15 ]; then
			echo ${COLOR0[@]}
			echo ${COLOR8[@]}
		fi
	done  
}

# base16 colors
color_style=normal
get_colors ${COLORSCHEME} | while read -r color_values; do
	carr=($color_values)
	if [ "$color_style" = "bright" ]; then
		filter='/^  # Bright colors/,/^$/'
	else
		filter='/^  # Normal colors/,/^$/'
		color_style=bright
	fi
	# DEBUG:
	# echo $filter
	# sed -n "${filter}p" $ALACRITTY_CONFIG
	for i in "${!colors[@]}"; do
 		sed -i "${filter}s/\(${colors[$i]}:\s\+'\).*/\1${carr[$i]}'/" $ALACRITTY_CONFIG
	done
done

# background and foreground colors
filter='/^colors:/,/^$/'
# TODO refacto: avoid running cpp multiple times (already ran once in get_colors)
# bg_color=$(cpp ${COLORSCHEME} | grep background | sed 's/background:\s\+//')
bg_color=$(cpp ${COLORSCHEME} | grep background | sed 's/\*background:\s\+//')
fg_color=$(cpp ${COLORSCHEME} | grep foreground | sed 's/\*foreground:\s\+//')
sed -i "${filter}s/\(background:\s\+'\).*/\1${bg_color}'/" $ALACRITTY_CONFIG 
sed -i "${filter}s/\(foreground:\s\+'\).*/\1${fg_color}'/" $ALACRITTY_CONFIG

echo alacolors: set colorschme: $COLORSCHEME
