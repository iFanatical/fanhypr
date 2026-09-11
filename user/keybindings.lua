require("user/keybindings/default")

local file = assert(io.open("/etc/hostname", "r"))
local hostname = file:read("*l")
file:close()

local module = "user/keybindings/" .. hostname

local ok, err = pcall(require, module)

-- fallback, if hostname not recognized
if not ok then
    print("No keybind configuration found for hostname: " .. hostname)
    print(err)
end
