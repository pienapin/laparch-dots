local wezterm = require 'wezterm'
return {
	tab_bar_at_bottom = true,
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = '18px',
		right = '16px',
		top = '18px',
		bottom = '12px'
	},
	font = wezterm.font_with_fallback {
		'DepartureMono Nerd Font'
	},
	font_size = 12.2,
	colors = {
	    foreground = "#f5f5f5",
	    background = "#1b1b1b",

	    ansi = {
	      "#242424", -- black
	      "#bf668e", -- red
	      "#3ea290", -- green
	      "#c0e0a7", -- yellow
	      "#4473b4", -- blue
	      "#7b5b97", -- magenta
	      "#82b2a5", -- cyan
	      "#d5dbd7", -- white
	    },

	    brights = {
	      "#323232", -- bright black
	      "#ff99cb", -- bright red
	      "#52ad91", -- bright green
	      "#cceaa9", -- bright yellow
	      "#477ab3", -- bright blue
	      "#8e78bf", -- bright magenta
	      "#95ccbe", -- bright cyan
	      "#edeff2", -- bright white
	    },
	  }
}
