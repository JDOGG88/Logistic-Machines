local function createMachine(version)
    local cm = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-" .. version])
    cm.name = "logistic-assembling-machine-" .. version
    cm.icons = {
        { icon = data.raw["assembling-machine"]["assembling-machine-" .. version].icon },
        logistic_requester_chest_mask,
        logistic_provider_chest_mask,
    }
    cm.minable = { hardness = 0.2, mining_time = 0.5, result = cm.name }
    cm.localised_name = lm_localised_name("logistic-assembling-machine", version)
    cm.localised_description = lm_localised_description_main
    cm.energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.03 / 3.5
    }
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
    if mods["MilesBobsExpansion"] then
        data:extend({
            createMachine(7),
            createMachine(8),
            createMachine(9),
            createMachine(10),
        })
    end
end
