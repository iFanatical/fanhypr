hl.monitor({ output = "DP-3", mode = "1920x1080@165", position = "-1920x0", scale = "1", cm = "auto" })
hl.monitor({ output = "DP-1", mode = "2560x1440@165", position = "0x0", scale = "1", cm = "auto" })

-- fallback
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })
