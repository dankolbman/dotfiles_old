xsetroot -cursor_name left_ptr

setxkbmap dvorak

xrdb .Xresources

exec xmonad

if [ -s ~/.Xmodmap ]; then
	xmodmap ~/.Xmodmap
fi
