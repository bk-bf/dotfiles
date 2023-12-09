xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xrandr --output DVI-D-0 --off --output HDMI-0 --off --output DP-0 --off --output DP-1 --mode 1920x1200 --pos 0x0 --rotate normal --output HDMI-1-1 --off --output HDMI-1-2 --mode 1920x1080 --pos 1920x0 --rotate normal

exec i3
