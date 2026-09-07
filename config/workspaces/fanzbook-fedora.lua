for workspace = 1, 5 do
    hl.workspace_rule({
        workspace = workspace,
        monitor = workspace <= 5 and "eDP-1",
        default = workspace == 1,
    })
end
