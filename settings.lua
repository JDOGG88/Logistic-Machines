data:extend({
    {
        type = "bool-setting",
        name = "show-inserter-arrows",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "bool-setting",
        name = "always-open-mod-gui-first",
        setting_type = "runtime-per-user",
        default_value = true,
    },
    {
        type = "double-setting",
        name = "stack-count",
        setting_type = "runtime-per-user",
        default_value = 50,
        allowed_values = { 10, 20, 30, 40, 50, 100 }
    },
    {
        type = "bool-setting",
        name = "limit-power",
        setting_type = "startup",
        default_value = false,
    },
})
