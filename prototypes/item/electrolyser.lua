local function createElectrolyser(version)
    local ce = table.deepcopy(data.raw.item["electrolyser-" .. version])
    ce.name = "logistic-electrolyser-" .. version
    ce.icons = { { icon = "__bobassembly__/graphics/icons/electrolyser-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    ce.icon_size = 32
    ce.place_result = ce.name
    ce.localised_description = lm_item_localised_description_main
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
