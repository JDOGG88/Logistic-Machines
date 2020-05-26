local function createMachineTechnology(tech_name, tech_version, provider, icon_image_loc, icon_image, count, ingredients, time)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-" .. tech_name .. "-" .. tech_version
    technology.icon_size = 128
    if icon_image_loc == "Krastorio2" then
        if provider == true then
            technology.icons = {
                { icon = "__" .. icon_image_loc .. "__/graphics/technologies/" .. icon_image .. ".png", icon_size = 128 },
                logistic_requester_chest_mask_tech,
                logistic_provider_chest_mask_tech,
            }
        else
            technology.icons = {
                { icon = "__" .. icon_image_loc .. "__/graphics/technologies/" .. icon_image .. ".png", icon_size = 128 },
                logistic_requester_chest_mask_tech,
            }
        end
    else
        if provider == true then
            technology.icons = {
                { icon = "__" .. icon_image_loc .. "__/graphics/technology/" .. icon_image .. ".png", icon_size = 128 },
                logistic_requester_chest_mask_tech,
                logistic_provider_chest_mask_tech,
            }
        else
            technology.icons = {
                { icon = "__" .. icon_image_loc .. "__/graphics/technology/" .. icon_image .. ".png", icon_size = 128 },
                logistic_requester_chest_mask_tech,
            }
        end
    end
    technology.effects = {}
    technology.prerequisites = {}
    technology.unit =
    {
        count = count,
        ingredients = ingredients,
        time = time
    }
    technology.order = "a"
    return technology
end

local two_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } }
local three_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } }
local four_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 } }
local five_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 } }

local machines_tech_1 = createMachineTechnology("machines", 1, true, "base", "automation", 75, three_sp, 60)
local lab_tech_1 = createMachineTechnology("lab", 1, false, "Logistic-Machines", "lab", 200, three_sp, 30)
local furnace_tech_1 = createMachineTechnology("electric-furnace", 1, true, "base", "advanced-material-processing", 200, three_sp, 30)

data:extend({
    machines_tech_1,
    lab_tech_1,
    furnace_tech_1,
})

table.insert(data.raw.technology["logistic-machines-1"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-3" })
table.insert(data.raw.technology["logistic-machines-1"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-1" })
table.insert(data.raw.technology["logistic-machines-1"].prerequisites, "logistic-robotics")
table.insert(data.raw.technology["logistic-machines-1"].prerequisites, "automation-3")
table.insert(data.raw.technology["logistic-lab-1"].effects, { type = "unlock-recipe", recipe = "logistic-lab-1" })
table.insert(data.raw.technology["logistic-lab-1"].prerequisites, "logistic-robotics")
table.insert(data.raw.technology["logistic-electric-furnace-1"].effects, { type = "unlock-recipe", recipe = "logistic-electric-furnace-1" })
table.insert(data.raw.technology["logistic-electric-furnace-1"].prerequisites, "advanced-material-processing-2")
table.insert(data.raw.technology["logistic-electric-furnace-1"].prerequisites, "logistic-robotics")

if mods["Krastorio2"] then
    local advanced_assembling_machine = createMachineTechnology("advanced-assembling-machine", 1, true, "Krastorio2", "advanced-assembling-machine", 250, data.raw.technology["kr-automation"].unit.ingredients, 30)
    local advanced_chemical_plant = createMachineTechnology("advanced-chemical-plant", 1, true, "Krastorio2", "advanced-chemical-plant", 250, data.raw.technology["kr-advanced-chemical-plant"].unit.ingredients, 30)
    local advanced_furnace = createMachineTechnology("advanced-furnace", 1, true, "Krastorio2", "advanced-furnace", 250, data.raw.technology["kr-advanced-furnace"].unit.ingredients, 30)
    local advanced_lab = createMachineTechnology("advanced-lab", 1, false, "Krastorio2", "biusart-lab", 150, data.raw.technology["kr-advanced-lab"].unit.ingredients, 30)
    local fuel_refinery = createMachineTechnology("fuel-refinery", 1, true, "Krastorio2", "fuel-refinery", 50, data.raw.technology["kr-fuel"].unit.ingredients, 30)
    local research_server = createMachineTechnology("research-server", 1, true, "Krastorio2", "research-server", 200, data.raw.technology["kr-research-server"].unit.ingredients, 30)
    local quantum_computer = createMachineTechnology("quantum-computer", 1, true, "Krastorio2", "quantum-computer", 300, data.raw.technology["kr-quantum-computer"].unit.ingredients, 60)
    local singularity_lab = createMachineTechnology("singularity-lab", 1, false, "Krastorio2", "singularity-lab", 300, data.raw.technology["kr-singularity-lab"].unit.ingredients, 60)

    data:extend({
        advanced_assembling_machine,
        advanced_chemical_plant,
        advanced_furnace,
        advanced_lab,
        fuel_refinery,
        research_server,
        quantum_computer,
        singularity_lab,
    })
    table.insert(data.raw.technology["logistic-advanced-assembling-machine-1"].effects, { type = "unlock-recipe", recipe = "logistic-advanced-assembling-machine-1" })
    table.insert(data.raw.technology["logistic-advanced-assembling-machine-1"].prerequisites, "kr-automation")
    table.insert(data.raw.technology["logistic-advanced-chemical-plant-1"].effects, { type = "unlock-recipe", recipe = "logistic-advanced-chemical-plant-1" })
    table.insert(data.raw.technology["logistic-advanced-chemical-plant-1"].prerequisites, "kr-advanced-chemical-plant")
    table.insert(data.raw.technology["logistic-advanced-furnace-1"].effects, { type = "unlock-recipe", recipe = "logistic-advanced-furnace-1" })
    table.insert(data.raw.technology["logistic-advanced-furnace-1"].prerequisites, "kr-advanced-furnace")
    table.insert(data.raw.technology["logistic-advanced-lab-1"].effects, { type = "unlock-recipe", recipe = "logistic-advanced-lab-1" })
    table.insert(data.raw.technology["logistic-advanced-lab-1"].prerequisites, "kr-advanced-lab")
    table.insert(data.raw.technology["logistic-advanced-lab-1"].prerequisites, "logistic-robotics")
    table.insert(data.raw.technology["logistic-fuel-refinery-1"].effects, { type = "unlock-recipe", recipe = "logistic-fuel-refinery-1" })
    table.insert(data.raw.technology["logistic-fuel-refinery-1"].prerequisites, "kr-fuel")
    table.insert(data.raw.technology["logistic-fuel-refinery-1"].prerequisites, "logistic-robotics")
    table.insert(data.raw.technology["logistic-research-server-1"].effects, { type = "unlock-recipe", recipe = "logistic-research-server-1" })
    table.insert(data.raw.technology["logistic-research-server-1"].prerequisites, "kr-research-server")
    table.insert(data.raw.technology["logistic-research-server-1"].prerequisites, "logistic-robotics")
    table.insert(data.raw.technology["logistic-quantum-computer-1"].effects, { type = "unlock-recipe", recipe = "logistic-quantum-computer-1" })
    table.insert(data.raw.technology["logistic-quantum-computer-1"].prerequisites, "kr-quantum-computer")
    table.insert(data.raw.technology["logistic-singularity-lab-1"].effects, { type = "unlock-recipe", recipe = "logistic-singularity-lab-1" })
    table.insert(data.raw.technology["logistic-singularity-lab-1"].prerequisites, "kr-singularity-lab")
end

if mods["bobassembly"] then
    local machines_tech_2 = createMachineTechnology("machines", 2, true, "base", "automation", 150, four_sp, 60)
    local machines_tech_3 = createMachineTechnology("machines", 3, true, "base", "automation", 300, four_sp, 60)
    local machines_tech_4 = createMachineTechnology("machines", 4, true, "base", "automation", 200, five_sp, 60)
    local electronics_machine_tech_2 = createMachineTechnology("electronics-machine", 2, true, "base", "automation", 100, two_sp, 30)
    local electronics_machine_tech_3 = createMachineTechnology("electronics-machine", 3, true, "base", "automation", 200, three_sp, 30)
    local furnace_tech_2 = createMachineTechnology("electric-furnace", 2, true, "base", "advanced-material-processing", 100, four_sp, 30)
    local furnace_tech_3 = createMachineTechnology("electric-furnace", 3, true, "base", "advanced-material-processing", 100, five_sp, 30)
    data:extend({
        machines_tech_2,
        machines_tech_3,
        machines_tech_4,
        electronics_machine_tech_2,
        electronics_machine_tech_3,
        furnace_tech_2,
        furnace_tech_3
    })
    table.insert(data.raw.technology["logistic-machines-2"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-4" })
    table.insert(data.raw.technology["logistic-machines-2"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-2" })
    table.insert(data.raw.technology["logistic-machines-2"].prerequisites, "logistic-machines-1")
    table.insert(data.raw.technology["logistic-machines-2"].prerequisites, "automation-4")
    table.insert(data.raw.technology["logistic-machines-3"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-5" })
    table.insert(data.raw.technology["logistic-machines-3"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-3" })
    table.insert(data.raw.technology["logistic-machines-3"].prerequisites, "logistic-machines-2")
    table.insert(data.raw.technology["logistic-machines-3"].prerequisites, "automation-5")
    table.insert(data.raw.technology["logistic-machines-4"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-6" })
    table.insert(data.raw.technology["logistic-machines-4"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-4" })
    table.insert(data.raw.technology["logistic-machines-4"].prerequisites, "logistic-machines-3")
    table.insert(data.raw.technology["logistic-machines-4"].prerequisites, "automation-6")
    table.insert(data.raw.technology["logistic-electronics-machine-2"].effects, { type = "unlock-recipe", recipe = "logistic-electronics-machine-2" })
    table.insert(data.raw.technology["logistic-electronics-machine-2"].prerequisites, "electronics-machine-2")
    table.insert(data.raw.technology["logistic-electronics-machine-3"].effects, { type = "unlock-recipe", recipe = "logistic-electronics-machine-3" })
    table.insert(data.raw.technology["logistic-electronics-machine-3"].prerequisites, "electronics-machine-3")
    table.insert(data.raw.technology["logistic-electric-furnace-2"].effects, { type = "unlock-recipe", recipe = "logistic-electric-furnace-2" })
    table.insert(data.raw.technology["logistic-electric-furnace-2"].prerequisites, "advanced-material-processing-3")
    table.insert(data.raw.technology["logistic-electric-furnace-2"].prerequisites, "logistic-electric-furnace-1")
    table.insert(data.raw.technology["logistic-electric-furnace-3"].effects, { type = "unlock-recipe", recipe = "logistic-electric-furnace-3" })
    table.insert(data.raw.technology["logistic-electric-furnace-3"].prerequisites, "advanced-material-processing-4")
    table.insert(data.raw.technology["logistic-electric-furnace-3"].prerequisites, "logistic-electric-furnace-2")
    if mods["bobplates"] then
        local chemical_mixing_furnace_tech_1 = createMachineTechnology("electric-chemical-mixing-furnace", 1, true, "base", "advanced-material-processing", 75, four_sp, 30)
        local chemical_mixing_furnace_tech_2 = createMachineTechnology("electric-chemical-mixing-furnace", 2, true, "base", "advanced-material-processing", 100, five_sp, 30)
        data:extend({
            chemical_mixing_furnace_tech_1,
            chemical_mixing_furnace_tech_2,
        })
        table.insert(data.raw.technology["logistic-electric-chemical-mixing-furnace-1"].effects, { type = "unlock-recipe", recipe = "logistic-electric-chemical-mixing-furnace-1" })
        table.insert(data.raw.technology["logistic-electric-chemical-mixing-furnace-1"].prerequisites, "multi-purpose-furnace-1")
        table.insert(data.raw.technology["logistic-electric-chemical-mixing-furnace-2"].effects, { type = "unlock-recipe", recipe = "logistic-electric-chemical-mixing-furnace-2" })
        table.insert(data.raw.technology["logistic-electric-chemical-mixing-furnace-2"].prerequisites, "multi-purpose-furnace-2")
        table.insert(data.raw.technology["logistic-machines-1"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-2" })
        table.insert(data.raw.technology["logistic-machines-2"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-3" })
        table.insert(data.raw.technology["logistic-machines-3"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-4" })
        table.insert(data.raw.technology["logistic-machines-4"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-5" })
    end
end

if mods["bobplates"] then
    local mixing_furnace_tech_1 = createMachineTechnology("electric-mixing-furnace", 1, true, "base", "advanced-material-processing", 75, three_sp, 30)
    local chemical_furnace_tech_1 = createMachineTechnology("chemical-furnace", 1, true, "base", "advanced-material-processing", 75, three_sp, 30)
    data:extend({
        mixing_furnace_tech_1,
        chemical_furnace_tech_1,
    })
    table.insert(data.raw.technology["logistic-electric-mixing-furnace-1"].effects, { type = "unlock-recipe", recipe = "logistic-electric-mixing-furnace-1" })
    table.insert(data.raw.technology["logistic-electric-mixing-furnace-1"].prerequisites, "electric-mixing-furnace")
    table.insert(data.raw.technology["logistic-chemical-furnace-1"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-furnace-1" })
    table.insert(data.raw.technology["logistic-chemical-furnace-1"].prerequisites, "electric-chemical-furnace")
end

if mods["bobtech"] then
    local lab_tech_2 = createMachineTechnology("lab", 2, false, "Logistic-Machines", "lab", 100, three_sp, 30)
    data:extend({
        lab_tech_2,
    })
    table.insert(data.raw.technology["logistic-lab-2"].effects, { type = "unlock-recipe", recipe = "logistic-lab-2" })
    table.insert(data.raw.technology["logistic-lab-2"].prerequisites, "advanced-electronics")
    table.insert(data.raw.technology["logistic-lab-2"].prerequisites, "logistics-3")
    table.insert(data.raw.technology["logistic-lab-2"].prerequisites, "logistic-lab-1")
end
