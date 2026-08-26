hl.on("hyprland.start", function()
    hl.exec_cmd("fanhypr-qs-shell")
    hl.exec_cmd("xsettingsd")
    hl.exec_cmd("/usr/libexec/polkit-mate-authentication-agent-1")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hyprvibrance all 1.5")
end)

local function restore_vibrance()
    hl.exec_cmd("hyprvibrance --restore")
end

hl.on("hyprland.start", restore_vibrance)
hl.on("config.reloaded", restore_vibrance)
hl.on("monitor.added", restore_vibrance)
hl.on("monitor.removed", restore_vibrance)
