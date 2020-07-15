if mods["Krastorio2"] then
    local function createMachine(name)
        local cm = table.deepcopy(data.raw["assembling-machine"]["kr-" .. name])
        cm.name = "logistic-" .. name .. "-1"
        cm.icons = {
            {
                icon = "__Krastorio2__/graphics/icons/entities/" .. name .. ".png",
                icon_size = data.raw["assembling-machine"]["kr-" .. name].icon_size
            },
            logistic_requester_chest_mask,
            logistic_provider_chest_mask
        }
        cm.icon_size = 64
        cm.minable = { hardness = 0.2, mining_time = 0.5, result = cm.name }
        cm.localised_description = lm_entity_localised_description_main
        return cm
    end

    data:extend({
        createMachine("advanced-assembling-machine"),
        createMachine("advanced-chemical-plant"),
        createMachine("advanced-furnace"),
        createMachine("fuel-refinery"),
        createMachine("research-server"),
        createMachine("quantum-computer"),
    })

    local function createLab(name)
        local cl = table.deepcopy(data.raw.lab[name])
        if name == "biusart-lab" then
            cl.name = "logistic-advanced-lab-1"
            cl.icons = { { icon = "__Krastorio2__/graphics/icons/entities/biusart-lab.png", icon_size = 64 }, logistic_requester_chest_mask }
        else
            cl.name = "logistic-singularity-lab-1"
            cl.icons = { { icon = "__Krastorio2__/graphics/icons/entities/singularity-lab.png", icon_size = 64 }, logistic_requester_chest_mask }
        end
        cl.icon_size = 64
        cl.minable = { hardness = 0.2, mining_time = 0.5, result = cl.name }
        cl.localised_description = lm_entity_localised_description_lab
        return cl
    end

    data:extend({
        createLab("biusart-lab"),
        createLab("kr-singularity-lab"),
    })

    data.raw.lab["logistic-advanced-lab-1"].inputs = { "automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "production-science-pack", "utility-science-pack" }
    data.raw.lab["logistic-singularity-lab-1"].inputs = { "production-science-pack", "utility-science-pack", "space-science-pack", "matter-tech-card", "advanced-tech-card", "singularity-tech-card" }
end
