----------------------
---- WINDOW RULES ----
----------------------
local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false, },
    no_focus = true,
})

-- drm
hl.window_rule ({
    tag = "+drm",
    match = { class = "^(steam)$" },
})
hl.window_rule ({
    tag = "+drm",
    match = { class = "^(heroic)$" },
})
hl.window_rule ({
    workspace = "3 silent",
    match = { tag = "drm"},
})
hl.window_rule ({
    size = { 338, 701 },
    match = { class = "^(steam)$", xwayland = true, title = "^(Friends List)$" },
    tag = "+flt",
    move = { 1550, 200 },
})
hl.window_rule ({
    match = { class = "^(steam)$", xwayland = true, title = "^(Steam Settings)$" },
    tag = "+flt",
    center = true,
})

-- games
hl.window_rule ({
    tag = "+games",
    match = { class = "^(Terraria.bin.x86_64)$" },
})
hl.window_rule ({
    tag = "+games",
    match = { class = "^(wow.exe)$" },
})
hl.window_rule ({
    tag = "+games",
    match = { class = "^(steam_app_.*)$" },
    fullscreen = 1,
})
hl.window_rule ({
    match = { title = "^(The Elder Scrolls V: Skyrim Special Edition)$" },
    float = 1,
    fullscreen = 0,
})
hl.window_rule ({
    tag = "+games",
    match = { class = "^(Slay the Spire 2)$" },
    fullscreen = 1,
})
hl.window_rule ({
    match = { class = "^(steam_app_489830)$", title = "" },
    float = 1,
    fullscreen = 0,
})
hl.window_rule ({
    tag = "+games",
    match = { class = "^(steam_app_489830)$", title = "^(Vortex)$" },
    fullscreen = 0,
})
hl.window_rule ({
    workspace = "4 silent",
    match = { tag = "games"},
    scroll_mouse = 1.0,
})

-- discord
hl.window_rule ({
    tag = "+discord",
    match = { class = "^(vesktop)$" },
})
hl.window_rule ({
    tag = "+discord",
    match = { class = "^([Dd]iscord)$" },
})
hl.window_rule ({
    tag = "+discord",
    match = { class = "^(scrcpy)$" },
})
hl.window_rule ({
    opacity = "1.0 override",
    match = { tag = "discord"},
})
hl.window_rule ({ 
    workspace = "special:discord silent",
    match = { tag = "discord" },
})
hl.window_rule ({
    match = { class = "^([Dd]iscord|vesktop)$" },
    tag = "+flt",
})

-- teamspeak
hl.window_rule ({
    tag = "+teamspeak",
    match = { class = "^(teamspeak-client|TeamSpeak 3)$" },
})
hl.window_rule ({
    opacity = "1.0 override",
    match = { tag = "teamspeak"},
})
hl.window_rule ({
    tag = "+flt",
    match = { tag = "teamspeak"},
})
hl.window_rule ({
    size = { 1084, 636 },
    match = { tag = "teamspeak"},
})
hl.window_rule ({ 
    workspace = "special:teamspeak silent",
    match = { tag = "teamspeak" },
})

-- floating
hl.window_rule ({
    name = "file-choosers",
    match = { class = "^(xdg-desktop-portal-gtk)$" },
    tag = "+flt",
    size = { 1084, 636 },
    center = 1,
})
hl.window_rule ({
    name = "file-operations",
    match = { class = "^([Tt]hunar)$", title = "Rename.*" },
    tag = "+flt",
})
hl.window_rule ({
    name = "bitwarden",
    match = { class = "^(brave-.*)$", title = "_crx_.*" },
    size = { 520, 720 },
    tag = "+flt",
})
hl.window_rule ({
    match = { initial_class = "brave-origin-nightly", initial_title = "Untitled - Brave Origin" },
    size = { 570, 720 },
    tag = "+flt",
})
hl.window_rule ({
    match = { class = "^([Tt]hunar)$", title = "^(File Operation Progress)$" },
    tag = "+flt",
})
hl.window_rule ({
    size = { 886, 738 },
    match = { title = "^(Choose target directory)$" },
})
hl.window_rule ({
    size = { 886, 650 }, 
    match = { class = "^(org.pulseaudio.pavucontrol)$"},
    tag = "+flt",
})
hl.window_rule ({
    size = { 886, 650 }, 
    match = { class = "^(libreoffice-startcenter)$"},
    tag = "+flt",
})
hl.window_rule ({
    match = { class = "^(org.kde.plasma-systemmonitor)$" },
    tag = "+flt",
})
hl.window_rule ({
    size = { 886, 738 },
    match = {class = "^(org.kde.plasma-systemmonitor)$" },
    tag = "+flt",
})
hl.window_rule ({
    float = 1,
    match = { tag = "flt" },
})

-- rdp
hl.window_rule ({
    match = { class = "org.remmina.Remmina", title = "^(fanwin10)$|^(Winsor Laptop)$" },
    maximize = true,
})
hl.window_rule ({
    match = { class = "org.remmina.Remmina" },
    tag = "+rdp",
})
hl.window_rule ({
    match = { tag = "rdp" },
    workspace = "5 silent",
})

-- virtualization
hl.window_rule({
    tag = "+virt",
    match = { class = "^(virt-manager)$" },
})
hl.window_rule({
    tag = "+virt",
    match = { title = ".*on QEMU/KVM.*" },
})
hl.window_rule({
    tag = "+flt",
    match = { title =  ".*on QEMU/KVM.*" },
})
hl.window_rule({
    size = { 1440, 976 },
    match = { title = ".*on QEMU/KVM.*" },
    center = 1,
})
hl.window_rule({
    workspace = "4 silent",
    match = { tag = "virt" },
})

-- fanos
hl.window_rule ({
    tag = "+fanos",
    match = { class = "^(fanos*)$" },
})
hl.window_rule ({
    float = 1,
    match = { class = "^(fanos-about)$" },
})
hl.window_rule ({
    float = 1,
    match = { class = "^(fanos-update)$" },
})
hl.window_rule ({
    float = 1,
    match = { class = "^(fanos-config)$" },
})
hl.window_rule ({
    size = { 800, 171 },
    match = { class = "^(fanos-about)$" },
    center = 1,
})
hl.window_rule ({
    size = { 800, 600 },
    match = { class = "^(fanos-update)$" },
    center = 1,
})
hl.window_rule ({
    size = {1280, 720 },
    match = { class = "^(fanos-config)$" },
    center = 1,
})
hl.layer_rule({
    match = { namespace = "fanhypr-qs-notifications" },
    blur = true,
    ignore_alpha = 0.1,
})
hl.layer_rule({
    match = { namespace = "fanhypr-qs-osd" },
    blur = true,
    ignore_alpha = 0.1,
})
