if mods["Krastorio2"] then
    local function createMachine(name)
        local cm = table.deepcopy(data.raw.item["kr-" .. name])
        cm.name = "logistic-" .. name .. "-1"
        cm.icons = { { icon = "__Krastorio2__/graphics/icons/entities/" .. name .. ".png", icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask }
        cm.icon_size = 64
        cm.place_result = cm.name
        return cm
    end

    local logistic_advanced_assembling_machine = createMachine("advanced-assembling-machine")
    local logistic_advanced_chemical_plant = createMachine("advanced-chemical-plant")
    local logistic_advanced_furnace = createMachine("advanced-furnace")
    local logistic_fuel_refinery = createMachine("fuel-refinery")
    local logistic_research_server = createMachine("research-server")
    local logistic_quantum_computer = createMachine("quantum-computer")
    data:extend({
        logistic_advanced_assembling_machine,
        logistic_advanced_chemical_plant,
        logistic_advanced_furnace,
        logistic_fuel_refinery,
        logistic_research_server,
        logistic_quantum_computer,
    })

    local function createLab(name)
        local cl = table.deepcopy(data.raw.item[name])
        if name == "biusart-lab" then
            cl.name = "logistic-advanced-lab-1"
            cl.icons = { { icon = "__Krastorio2__/graphics/icons/entities/biusart-lab.png", icon_size = 64 }, logistic_requester_chest_mask }
        else
            cl.name = "logistic-singularity-lab-1"
            cl.icons = { { icon = "__Krastorio2__/graphics/icons/entities/singularity-lab.png", icon_size = 64 }, logistic_requester_chest_mask }
        end
        cl.icon_size = 64
        cl.place_result = cl.name
        return cl
    end

    local logistic_advanced_lab = createLab("biusart-lab")
    local logistic_singularity_lab = createLab("kr-singularity-lab")
    data:extend({
        logistic_advanced_lab,
        logistic_singularity_lab,
    })
end
