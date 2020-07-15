local function createFurnace(version, type)
    local cf
    if version == 1 then
        if type == nil then
            cf = table.deepcopy(data.raw.furnace["electric-furnace"])
        else
            cf = table.deepcopy(data.raw["assembling-machine"]["electric-" .. type .. "-furnace"])
        end
    else
        if type == nil then
            cf = table.deepcopy(data.raw.furnace["electric-furnace-" .. version])
        else
            cf = table.deepcopy(data.raw["assembling-machine"]["electric-" .. type .. "-furnace-" .. version])
        end
    end
    if type == nil then
        cf.name = "logistic-electric-furnace-" .. version
        cf.icons = { { icon = data.raw.furnace["electric-furnace"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.localised_name = lm_localised_name("logistic-electric-furnace", version)
    else
        cf.name = "logistic-electric-" .. type .. "-furnace-" .. version
        cf.icons = { { icon = data.raw["assembling-machine"]["electric-" .. type .. "-furnace"].icon, icon_size = 32 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.localised_name = lm_localised_name("logistic-electric-" .. type .. "-furnace", version)
    end
    cf.minable = { hardness = 0.2, mining_time = 0.5, result = cf.name }
    cf.icon_size = 32
    cf.localised_description = lm_entity_localised_description_main
    return cf
end

data:extend({
    createFurnace(1, nil),
})

if mods["bobassembly"] then
    data:extend({
        createFurnace(2, nil),
        createFurnace(3, nil),
    })
end

if mods["bobplates"] then
    data:extend({
        createFurnace(1, "mixing"),
        createFurnace(1, "chemical"),
    })
end

if mods["bobplates"] and mods["bobassembly"] then
    data:extend({
        createFurnace(1, "chemical-mixing"),
        createFurnace(2, "chemical-mixing"),
    })
end
