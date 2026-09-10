for workspace = 1, 10 do
    hl.workspace_rule({
        workspace = workspace,
        monitor = workspace <= 5 and "DP-1" or "DP-3",
        default = workspace == 1,
    })
end
