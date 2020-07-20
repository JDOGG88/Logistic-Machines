if mods["bobassembly"] then
    if settings.startup["bobmods-assembly-electronicmachines"].value == true then
        local function createMachine(version)
            local cm = table.deepcopy(data.raw["assembling-machine"]["electronics-machine-" .. version])
            cm.name = "logistic-electronics-machine-" .. version
            cm.minable = { hardness = 0.2, mining_time = 0.5, result = cm.name }
            cm.icons = { { icon = "__bobassembly__/graphics/icons/electronics-machine-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
            cm.icon_size = 32
            cm.localised_name = lm_localised_name("logistic-electronics-machine", version)
            cm.localised_description = lm_localised_description_main
            return cm
        end

        data:extend({
            createMachine(2),
            createMachine(3),
        })
    end
end
