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
--- TODO: Layout Swithcer N config for Master / Dwindle and Scroll Layout
--hl.bind("ALT + SHIFT_L + 1", function()
--   hl.config({ general = { layout = "dwindle" } })
--end)
map("s", hl.dsp.layout("togglesplit"))

-- execute / run
map("Return", hl.dsp.exec_cmd(Terminal), { submap_universal = true })
map("d", hl.dsp.exec_cmd(Menu))

hl.bind("Print", hl.dsp.exec_cmd("grim ~/Imágenes/$(date +'%Y-%m-%d_%H-%M-%S').png"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))

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

-- resize
--- Switch to a submap called `resize`.
map("R", hl.dsp.submap("resize"))

-- Start a submap called "resize".
hl.define_submap("resize", function()
	-- Set repeating binds for resizing the active window.
	hl.bind("l", hl.dsp.window.resize({ x = 30, y = 0, relative = true }), { repeating = true })
	hl.bind("h", hl.dsp.window.resize({ x = -30, y = 0, relative = true }), { repeating = true })
	hl.bind("k", hl.dsp.window.resize({ x = 0, y = 30, relative = true }), { repeating = true })
	hl.bind("j", hl.dsp.window.resize({ x = 0, y = -30, relative = true }), { repeating = true })

	-- Use `reset` to go back to the global submap
	hl.bind("escape", hl.dsp.submap("reset"))
end)
