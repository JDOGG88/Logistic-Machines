local function createReactor(version)
    local cr
    if version == 1 then
        cr = table.deepcopy(data.raw.reactor["nuclear-reactor"])
        cr.icons = { { icon = data.raw.reactor["nuclear-reactor"].icon, icon_size = data.raw.reactor["nuclear-reactor"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    else
        cr = table.deepcopy(data.raw.reactor["nuclear-reactor-" .. version])
        cr.icons = { { icon = data.raw.reactor["nuclear-reactor-" .. version].icon, icon_size = data.raw.reactor["nuclear-reactor-" .. version].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    end
    cr.name = "logistic-nuclear-reactor-" .. version
    cr.minable = { mining_time = 0.5, result = cr.name }
    cr.localised_name = lm_localised_name("logistic-nuclear-reactor", version)
    cr.localised_description = lm_localised_description_main
    cr.icon_size = 32
    return cr
end

data:extend({
    createReactor(1),
})

if mods["bobpower"] then
    data:extend({
        createReactor(2),
        createReactor(3),
    })
end
