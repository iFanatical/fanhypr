-- Hyprland Lua configuration entrypoint.
-- Modules are loaded in dependency/configuration order.

require("config/environment")
require("settings/monitors")
require("settings/appearance")
require("settings/input")
require("config/workspaces")
require("config/window_rules")
require("user/keybindings")
require("user/autostart")
