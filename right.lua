conky.config = {


	--General settings

	background = true,															-- forked to background
	cpu_avg_samples = 6,														-- The number of samples to average for CPU monitoring.
	diskio_avg_samples = 10,													-- The number of samples to average for disk I/O monitoring.
	double_buffer = true,														-- Use the Xdbe extension? (eliminates flicker)
	if_up_strictness = 'address',												-- how strict if testing interface is up - up, link or address
	net_avg_samples = 2,														-- The number of samples to average for net data
	no_buffers = true,															-- Subtract (file system) buffers from used memory?
	temperature_unit = 'celsius',												-- fahrenheit or celsius
	text_buffer_size = 256,														-- size of buffer for display of content of large variables - default 256
	update_interval = 1,														-- update interval
	imlib_cache_size = 0,														-- disable image cache to get a new spotify cover per song


	--Position

	alignment = 'middle_right',													-- top_left,top_middle,top_right,bottom_left,bottom_middle,bottom_right,
	gap_x = 0,																	-- pixels between right or left border
	gap_y = 0,																	-- pixels between bottom or left border
	minimum_height = 300,														-- minimum height of window
	minimum_width = 300,														-- minimum width of window
	maximum_width = 500,														-- maximum width of window



	--Visual

	border_inner_margin = 10,													-- margin between border and text
	border_outer_margin = 5,													-- margin between border and edge of window
	border_width = 0,															-- border width in pixels
	default_bar_width = 80,														-- default is 0 - full width
	default_bar_height = 8,														-- default is 6
	default_gauge_height = 25,													-- default is 25
	default_gauge_width = 40,													-- default is 40
	default_graph_height = 25,													-- default is 25
	default_graph_width = 0,													-- default is 0 - full width
	default_shade_color = '#000000',											-- default shading colour
	default_outline_color = '#000000',											-- default outline colour
	draw_borders = false,														-- draw borders around text
	draw_graph_borders = false,													-- draw borders around graphs
	draw_shades = false,														-- draw shades
	draw_outline = false,														-- draw outline
	stippled_borders = 0,														-- dashing the border


	--Textual

	extra_newline = false,														-- extra newline at the end - for asesome's wiboxes
	format_human_readable = true,												-- KiB, MiB rather then number of bytes
	font = 'ProFontWindows:size=18',											-- font for complete conky unless in code defined
	max_text_width = 0,															-- 0 will make sure line does not get broken if width too smal
	max_user_text = 16384,														-- max text in conky default 16384
	override_utf8_locale = true,												-- force UTF8 requires xft
	short_units = true,															-- shorten units from KiB to k
	top_name_width = 21,														-- width for $top name value default 15
	top_name_verbose = false,													-- If true, top name shows the full command line of  each  process - Default value is false.
	uppercase = false,															-- uppercase or not
	use_spacer = 'none',														-- adds spaces around certain objects to align - default none
	use_xft = true,																-- xft font - anti-aliased font
	xftalpha = 1,																-- alpha of the xft font - between 0-1


	--Windows

	own_window = true,															-- create your own window to draw
	own_window_argb_value = true,												-- real transparency - composite manager required 0-255
	own_window_argb_visual = true,												-- use ARGB - composite manager required
	own_window_colour = '#000000',												-- set colour if own_window_transparent no
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',		-- if own_window true - just hints - own_window_type sets it
	own_window_transparent = true,												-- if own_window_argb_visual is true sets background opacity 0%
	own_window_title = 'conky',													-- set the name manually  - default conky "hostname"
	own_window_type = 'normal',													-- if own_window true options are: normal/override/dock/desktop/panel


	--Colours

		color1 = '#E4DFDA',                                                     -- T>
        color2 = '#C1666B',                                                     -- S>
		color3 = '#E4DFDA',                                                     -- S>
		color4 = '#12674A',                                                     -- B>
        color5 = '#E4DFDA',
        color7 = '#D4B483', 


};

conky.text = 
[[
${color2}S Y S T E M   ${hr 2}${font}${color2}
${color3}${offset 20}Date  :${color5} ${alignr}${time %A} ${time %e} ${time %B}
${color3}${offset 20}Kernel:${color5} ${alignr}${exec uname -r | cut -d "-" -f1}
${color3}${offset 20}Uptime:${color5} ${alignr}${uptime}
${color3}${offset 20}Time  :${color5} ${alignr}${time %l}:${time %M}${font}${color}
#
#
#
#
#
#
#
#
#
#
${color2}P R O C E S S O R   ${hr 2}${font}${color2}
${color3}${offset 20}Freq:${color5} ${alignr}${freq_g} Ghz
${color3}${offset 20}Temp:${color5} ${alignr}${hwmon 1 temp 1}°C
${color3}${offset 20}${cpugraph}
#
#
#
#
#
#
${color2}M E M O R Y   &   S T O R A G E   ${hr 2}${color2}
${color3}${offset 20}Memory: ${color5}${alignr}${mem} / ${memmax}${alignr}${color4}
${color2}${offset 20}${membar 18,280}
${color3}${offset 20}Storage: ${color5}${alignr}${fs_used} / ${fs_size}${alignr}${color4}
${color2}${offset 20}${fs_bar 18,280}
]];
