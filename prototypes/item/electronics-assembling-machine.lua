local function createMachine(version)
    local cm = table.deepcopy(data.raw.item["electronics-machine-" .. version])
    cm.name = "logistic-electronics-machine-" .. version
    cm.icons = { { icon = data.raw.item["electronics-machine-" .. version].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    cm.icon_size = 32
    cm.place_result = cm.name
    cm.flags = { "draw-logistic-overlay" }
    cm.localised_name = lm_localised_name("logistic-electronics-machine", version)
    cm.localised_description = lm_localised_description_main
    return cm
end

if mods["bobassembly"] then
    if settings.startup["bobmods-assembly-electronicmachines"].value == true then
        data:extend({
            createMachine(2),
            createMachine(3),
        })
    end
end
