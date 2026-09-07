hl.monitor({ output = "DP-2", mode = "1920x1080@100", position = "1920x0", scale = "1", cm = "auto" })
hl.monitor({ output = "DP-1", mode = "1920x1080@100", position = "0x0", scale = "1", cm = "auto" })

-- fallback
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })
