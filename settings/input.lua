hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        repeat_delay = 200,
        repeat_rate = 35,
        focus_on_close = 1,
        special_fallthrough = true,
        follow_mouse = 1,
        accel_profile = "flat",
        sensitivity = 0.0,
        touchpad = { natural_scroll = false },
    },
    binds = { workspace_back_and_forth = true },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.device({ name = "epic-mouse-v1", sensitivity = -0.5 })
hl.device({ name = "asustek-rog-harpe-ace-aim-lab-edition", scroll_factor = 2.0, sensitivity = 0.0, accel_profile = flat })
