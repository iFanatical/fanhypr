local programs = require("user/programs")
local mod = "SUPER"

hl.bind(mod .. " + Return", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mod .. " + SHIFT + C", hl.dsp.window.close())
hl.bind(mod .. " + SHIFT + BackSpace", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mod .. " + E", hl.dsp.exec_cmd(programs.file_manager))
hl.bind(mod .. " + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind("ALT + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mod .. " + J", hl.dsp.layout("cyclenext"))
hl.bind(mod .. " + K", hl.dsp.layout("cycleprev"))
hl.bind(mod .. " + COMMA", hl.dsp.focus({ monitor = "-1" }))
hl.bind(mod .. " + PERIOD", hl.dsp.focus({ monitor = "+1" }))

hl.bind(mod .. " + SHIFT + L", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })
hl.bind(mod .. " + SHIFT + H", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
hl.bind(mod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })
hl.bind(mod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })

for key = 1, 5 do
    hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = key }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = key, follow = false }))

    hl.bind("ALT + " .. key, hl.dsp.focus({ workspace = key + 5 }))
    hl.bind("ALT + SHIFT + " .. key, hl.dsp.window.move({ workspace = key + 5, follow = false }))
end

local shell = programs.shell .. " ipc call "
hl.bind(mod .. " + Space", hl.dsp.exec_cmd(shell .. "launcher toggle"))
hl.bind(mod .. " + R", hl.dsp.exec_cmd(shell .. "runner toggle"))
hl.bind("ALT + V", hl.dsp.exec_cmd(shell .. "vpn tun1 toggle"))
hl.bind("ALT + SHIFT + V", hl.dsp.exec_cmd(shell .. "vpn tun2 toggle"))
hl.bind("ALT + N", hl.dsp.exec_cmd(shell .. "notifications toggle-dnd"))
hl.bind(mod .. " + W", hl.dsp.exec_cmd(shell .. "wallpaper toggle"))
hl.bind(mod .. " + Semicolon", hl.dsp.exec_cmd(shell .. "emoji toggle"))

hl.bind(mod .. " + SHIFT + code:20", hl.dsp.exec_cmd("alacritty-opacity --opacdown"))
hl.bind(mod .. " + SHIFT + code:21", hl.dsp.exec_cmd("alacritty-opacity --opacup"))

hl.bind("ALT + C", hl.dsp.exec_cmd("hyprpicker"))

hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mod .. " + B", hl.dsp.exec_cmd(programs.browser))
hl.bind(mod .. " + ALT + B", hl.dsp.exec_cmd(programs.browser_alt))
hl.bind(mod .. " + SHIFT + P", hl.dsp.exec_cmd("fanhypr-qs-restart"))
hl.bind(mod .. " + P", hl.dsp.exec_cmd("pavucontrol"))

hl.bind("Print", hl.dsp.exec_cmd(programs.screenshot_region))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd(programs.screenshot_output))

hl.bind("CTRL + ALT + Tab", hl.dsp.exec_cmd(programs.screenshot_region))
hl.bind("CTRL + SHIFT + ALT + Tab", hl.dsp.exec_cmd(programs.screenshot_output))

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(shell .. "media play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(shell .. "media play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(shell .. "media next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(shell .. "media previous"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(programs.volume_up))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(programs.volume_down))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(programs.volume_mute))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(programs.microphone_mute))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(programs.brightness_up))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(programs.brightness_down))
hl.bind(mod .. " + F1", hl.dsp.exec_cmd(programs.monitor_brightness_up))
hl.bind(mod .. " + F2", hl.dsp.exec_cmd(programs.monitor_brightness_down))
