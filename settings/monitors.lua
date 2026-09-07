local file = assert(io.open("/etc/hostname", "r"))
local hostname = file:read("*l")
file:close()

local module = "settings.monitors." .. hostname

local ok, err = pcall(require, module)

-- fallback, if hostname not recognized
if not ok then
    print("No monitor configuration found for hostname: " .. hostname)

    hl.monitor({
        output = "",
        mode = "preferred",
        position = "auto",
        scale = "auto"
    })
end
