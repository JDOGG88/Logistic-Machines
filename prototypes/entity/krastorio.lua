if mods["Krastorio2"] then
    local function createMachine(name, selection_box, selection_box_top)
        local cm = table.deepcopy(data.raw["assembling-machine"]["kr-" .. name])
        cm.name = "logistic-" .. name .. "-1"
        cm.icons = { { icon = "__Krastorio2__/graphics/icons/entities/" .. name .. ".png", icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask }
        cm.icon_size = 64
        cm.minable = { hardness = 0.2, mining_time = 0.5, result = cm.name }
        cm.selection_box = { { -selection_box, selection_box_top }, { selection_box, selection_box } }
        return cm
    end

    local logistic_advanced_assembling_machine = createMachine("advanced-assembling-machine", 2.5, -1.75)
    local logistic_advanced_chemical_plant = createMachine("advanced-chemical-plant", 3.5, -2.75)
    local logistic_advanced_furnace = createMachine("advanced-furnace", 3.5, -2.75)
    local logistic_fuel_refinery = createMachine("fuel-refinery", 1.5, -0.75)
    local logistic_research_server = createMachine("research-server", 1.4, -0.75)
    local logistic_quantum_computer = createMachine("quantum-computer", 2.95, -2.2)
    data:extend({
        logistic_advanced_assembling_machine,
        logistic_advanced_chemical_plant,
        logistic_advanced_furnace,
        logistic_fuel_refinery,
        logistic_research_server,
        logistic_quantum_computer,
    })

    local function createLab(name, selection_box, selection_box_top)
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
        cl.selection_box = { { -selection_box, selection_box_top }, { selection_box, selection_box } }
        return cl
    end

    local logistic_advanced_lab = createLab("biusart-lab", 1.5, -0.75)
    local logistic_singularity_lab = createLab("kr-singularity-lab", 3.9, -3.15)
    data:extend({
        logistic_advanced_lab,
        logistic_singularity_lab,
    })

    data.raw.lab["logistic-advanced-lab-1"].inputs = { "automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "production-science-pack", "utility-science-pack" }
    data.raw.lab["logistic-singularity-lab-1"].inputs = { "production-science-pack", "utility-science-pack", "space-science-pack", "matter-tech-card", "advanced-tech-card", "singularity-tech-card" }
end
