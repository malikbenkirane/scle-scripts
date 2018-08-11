# requires: setxkbmap, xcape
# kbconf - keyboard nocapss & ctrl as ^[

setxkbmap -option
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape' -t 100
