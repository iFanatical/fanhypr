require("config/environment/default")

local file = assert(io.open("/etc/hostname", "r"))
local hostname = file:read("*l")
file:close()

local module = "config/environment/" .. hostname

local ok, err = pcall(require, module)

-- fallback, if hostname not recognized
if not ok then
    print("No environment configuration found for hostname: " .. hostname)
    print(err)
end
