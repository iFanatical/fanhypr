hl.monitor({ output = "DP-2", mode = "1920x1080@100", position = "auto", scale = "1", cm = "auto" })
hl.monitor({ output = "DP-1", mode = "1920x1080@100", position = "auto", scale = "1", cm = "auto" })
hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "auto", scale = "1", cm = "auto" })

-- Fallback for any monitor not matched above.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })
