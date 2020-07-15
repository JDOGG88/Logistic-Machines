local function createMachine(version)
    local cm = table.deepcopy(data.raw.item["assembling-machine-" .. version])
    cm.name = "logistic-assembling-machine-" .. version
    if mods["bobassembly"] then
        if version == 6 then
            cm.icons = { { icon = "__bobassembly__/graphics/icons/assembling-machine-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        else
            cm.icons = { { icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        end
    else
        cm.icons = { { icon = "__base__/graphics/icons/assembling-machine-" .. version .. ".png", icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    end
    cm.icon_size = 32
    cm.place_result = cm.name
    cm.localised_description = lm_item_localised_description_main
    return cm
end

if not mods["bobassembly"] then
    data:extend({
        createMachine(3),
    })
else
    data:extend({
        createMachine(3),
        createMachine(4),
        createMachine(5),
        createMachine(6),
    })
end
