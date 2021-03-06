if mods["bobplates"] and mods["bobassembly"] then
    local function createElectrolyser(version)
        local ce = table.deepcopy(data.raw["assembling-machine"]["electrolyser-" .. version])
        ce.name = "logistic-electrolyser-" .. version
        ce.minable = { hardness = 0.2, mining_time = 0.5, result = ce.name }
        ce.icons = { { icon = data.raw["assembling-machine"]["electrolyser-" .. version].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        ce.localised_name = lm_localised_name("logistic-electrolyser", version)
        ce.localised_description = lm_localised_description_main
        return ce
    end

    data:extend({
        createElectrolyser(2),
        createElectrolyser(3),
        createElectrolyser(4),
        createElectrolyser(5),
    })
end
