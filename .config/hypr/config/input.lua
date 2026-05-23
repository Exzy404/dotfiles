hl.config({
	input = {
		kb_layout = "us",

		-- Variante: International con AltGr para acentos y eñes
		kb_variant = "altgr-intl",

		follow_mouse = 1,
		sensitivity = 0, -- -1.0 a 1.0, 0 significa sin alteración de sensibilidad

		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
