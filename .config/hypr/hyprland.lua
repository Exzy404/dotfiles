------------------
---when haces tus momos en wayland: el futuro es hoy oiste viejo ;v

----------------------------------- ENVIRONMENT VARIABLES ----
--local wallpaper = "/home/exxy/.local/assets/wallpaper.png"

local cursor_theme = "SilverXMod"
hl.env("XCURSOR_THEME", cursor_theme)
hl.env("XCURSOR_SIZE", "24")

hl.env("HYPRCURSOR_THEME", cursor_theme)
hl.env("HYPRCURSOR_SIZE", "24")
-- util software
Terminal = "kitty"
FileManager = "Thunar"
Menu = "rofi -show drun"
MainMod = "SUPER" -- Sets "Windows" key as main modifier
---------------------------------------------------------------

require("config.output") ---- MONITORS ----
require("config.autostart") --- AUTOSTART ----
require("config.input") ---- INPUT ----
require("config.rules") ---- LOOK AND FEEL ----
require("config.animations") -- Animations
require("config.permissions") --- PERMISSIONS -----
require("config.keybinds") --- KEYBINDINGS ----

-- Layouts & Feel
hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
		force_split = 2,
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
	master = {
		new_status = "master",
		new_on_top = false,
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})
