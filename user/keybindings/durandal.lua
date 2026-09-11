local mod = "SUPER"

hl.bind(mod .. " + D", function()
    hl.dispatch(hl.dsp.exec_cmd("pgrep -x Discord >/dev/null || discord"))
    hl.dispatch(hl.dsp.workspace.toggle_special("discord"))
end)
hl.bind(mod .. " + SHIFT + D", hl.dsp.window.move({ workspace = "special:discord", follow = false }))

hl.bind(mod .. " + X", function()
    hl.dispatch(hl.dsp.exec_cmd("pgrep -x teamspeak3 >/dev/null || teamspeak3"))
    hl.dispatch(hl.dsp.workspace.toggle_special("teamspeak"))
end)
hl.bind(mod .. " + SHIFT + X", hl.dsp.window.move({ workspace = "special:teamspeak", follow = false }))
