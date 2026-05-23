hl.dsp.exec_cmd(
	"dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XCURSOR_THEME XCURSOR_SIZE"
)
hl.dsp.exec_cmd("xrdb -merge ~/.Xresources")

hl.on("hyprland.start", function()
	--   hl.exec_cmd(terminal)
	--   hl.exec_cmd("nm-applet")
	hl.exec_cmd("waybar")
	hl.exec_cmd("hyprclt setcursor SilverXMod 24")
	hl.exec_cmd("hyprpaper")
end)
