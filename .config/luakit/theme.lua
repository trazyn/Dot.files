--=============================================================
--
--   D A R K S >>> luakit
--

local theme = {}

-- Default settings
theme.font                      = "Pragmata 6.5"
theme.fg                        = "#fff"
theme.bg                        = "#151515"

-- Genaral colours
theme.success_fg                = "#519f50"
theme.loaded_fg                 = "#a5c261"
theme.error_fg                  = "#FFF"
theme.error_bg                  = "#da4939"

-- Warning colours
theme.warning_fg                = "#da4939"
theme.warning_bg                = "#ddd"

-- Notification colours
theme.notif_fg                  = "#666"
theme.notif_bg                  = "#151515"

-- Menu colours
theme.menu_fg                   = "#ddd"
theme.menu_bg                   = "#151515"
theme.menu_selected_fg          = "#151515"
theme.menu_selected_bg          = "#6d9cbe"
theme.menu_title_bg             = "#090909"
theme.menu_primary_title_fg     = "#da4939"
theme.menu_secondary_title_fg   = "#666"

-- Proxy manager
theme.proxy_active_menu_fg      = '#151515'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg                   = "#ddd"
theme.sbar_bg                   = "#151515"

-- Downloadbar specific
theme.dbar_fg                   = "#ddd"
theme.dbar_bg                   = "#151515"
theme.dbar_error_fg             = "#da4939"

-- Input bar specific
theme.ibar_fg                   = "#ddd"
theme.ibar_bg                   = "#090909"

-- Tab label
theme.tab_fg                    = "#888"
theme.tab_bg                    = "#151515"
theme.tab_ntheme                = "#ddd"
theme.selected_fg               = "#fff"
theme.selected_bg               = "#212121"
theme.selected_ntheme           = "#ddd"
theme.loading_fg                = "#6d9cbe"
theme.loading_bg                = "#151515"

-- Trusted/untrusted ssl colours
theme.trust_fg                  = "#519f50"
theme.notrust_fg                = "#da4939"

return theme
