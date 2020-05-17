function createMachine(version)
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
    cm.place_result = "logistic-assembling-machine-" .. version
    return cm
end

if not mods["bobassembly"] then
    local logistic_assembling_machine_3 = createMachine(3)
    data:extend({
        logistic_assembling_machine_3,
    })
else
    local logistic_assembling_machine_3 = createMachine(3)
    local logistic_assembling_machine_4 = createMachine(4)
    local logistic_assembling_machine_5 = createMachine(5)
    local logistic_assembling_machine_6 = createMachine(6)
    data:extend({
        logistic_assembling_machine_3,
        logistic_assembling_machine_4,
        logistic_assembling_machine_5,
        logistic_assembling_machine_6,
    })
end
