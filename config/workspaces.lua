local file = assert(io.open("/etc/hostname", "r"))
local hostname = file:read("*l")
file:close()

local module = "config/workspaces/" .. hostname

local ok, err = pcall(require, module)

-- fallback, if hostname not recognized
if not ok then
    print("No workspace configuration found for hostname: " .. hostname)
    print(err)

    for workspace = 1, 10 do
	hl.workspace_rule({
	    workspace = workspace,
	    default = workspace == 1,
	})
    end
end
