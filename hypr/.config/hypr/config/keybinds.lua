local map = function(keys, action, opt)
	hl.bind(MainMod .. "+" .. keys, action, opt)
end

-- window managment
map("q", hl.dsp.window.close())
map("Space", hl.dsp.window.float({ action = "toggle" }))

map(" + F", hl.dsp.window.fullscreen("maximized", "toggle"))

map("mouse:272", hl.dsp.window.drag(), { mouse = true })
map("mouse:273", hl.dsp.window.resize(), { mouse = true })
map("h", hl.dsp.focus({ direction = "left" }))
map("j", hl.dsp.focus({ direction = "down" }))
map("k", hl.dsp.focus({ direction = "up" }))
map("l", hl.dsp.focus({ direction = "right" }))

map("m", hl.dsp.workspace.toggle_special("magic")) -- ???
map("P", hl.dsp.window.pseudo()) -- wtf?

map("SHIFT+H", hl.dsp.window.move({ direction = "l" }))
map("SHIFT+L", hl.dsp.window.move({ direction = "r" }))
map("SHIFT+K", hl.dsp.window.move({ direction = "u" }))
map("SHIFT+J", hl.dsp.window.move({ direction = "d" }))
----

map("s", hl.dsp.layout("togglesplit"))
-- execute / run
map("Return", hl.dsp.exec_cmd(Terminal))
map("d", hl.dsp.exec_cmd(Menu))

-- Workspaces
for i = 1, 10 do
	local key = i % 10
	hl.bind(MainMod .. "+" .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(MainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

--- MULTIMEDIA KEYS
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
