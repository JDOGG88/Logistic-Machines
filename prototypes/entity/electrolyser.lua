if mods["bobplates"] and mods["bobassembly"] then
    local function createElectrolyser(version)
        local ce = table.deepcopy(data.raw["assembling-machine"]["electrolyser-" .. version])
        ce.name = "logistic-electrolyser-" .. version
        ce.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-electrolyser-" .. version }
        ce.icons = { { icon = "__bobassembly__/graphics/icons/electrolyser-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        ce.icon_size = 32
        ce.localised_name = lm_localised_name("logistic-electrolyser", version)
        ce.localised_description = lm_entity_localised_description_main
        return ce
    end

    data:extend({
        createElectrolyser(2),
        createElectrolyser(3),
        createElectrolyser(4),
        createElectrolyser(5),
    })
end
