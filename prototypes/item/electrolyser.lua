local function createElectrolyser(version)
    local ce = table.deepcopy(data.raw.item["electrolyser-" .. version])
    ce.name = "logistic-electrolyser-" .. version
    ce.icons = { { icon = data.raw.item["electrolyser-" .. version].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    ce.place_result = ce.name
    ce.flags = {"draw-logistic-overlay"}
    ce.localised_name = lm_localised_name("logistic-electrolyser", version)
    ce.localised_description = lm_localised_description_main
    return ce
end

if mods["bobplates"] and mods["bobassembly"] then
    data:extend({
        createElectrolyser(2),
        createElectrolyser(3),
        createElectrolyser(4),
        createElectrolyser(5),
    })
end
