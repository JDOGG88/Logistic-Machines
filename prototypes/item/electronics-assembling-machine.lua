if mods["bobplates"] and mods["bobassembly"] then
    local function createMachine(version)
        local cm = table.deepcopy(data.raw.item["electronics-machine-" .. version])
        cm.name = "logistic-electronics-machine-" .. version
        cm.icons = { { icon = "__bobassembly__/graphics/icons/electronics-machine-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cm.icon_size = 32
        cm.place_result = cm.name
        return cm
    end

    local logistic_electronics_machine_2 = createMachine(2)
    local logistic_electronics_machine_3 = createMachine(3)
    data:extend({
        logistic_electronics_machine_2,
        logistic_electronics_machine_3,
    })
end
