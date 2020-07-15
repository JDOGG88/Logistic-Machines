local function createReactor(version)
    local cr
    if version == 1 then
        cr = table.deepcopy(data.raw.item["nuclear-reactor"])
        cr.icons = { { icon = data.raw.item["nuclear-reactor"].icon, icon_size = data.raw.item["nuclear-reactor"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    else
        cr = table.deepcopy(data.raw.item["nuclear-reactor-" .. version])
        cr.icons = { { icon = data.raw.item["nuclear-reactor-" .. version].icon, icon_size = data.raw.item["nuclear-reactor-" .. version].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    end
    cr.name = "logistic-nuclear-reactor-" .. version
    cr.place_result = cr.name
    cr.icon_size = 32
    cr.localised_description = lm_item_localised_description_main
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
