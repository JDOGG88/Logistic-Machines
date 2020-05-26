if mods["Krastorio2"] then
    local function createRecipe(base_entity)
        local recipe = {}
        recipe.type = "recipe"
        recipe.name = "logistic-" .. base_entity .. "-1"
        recipe.enabled = false
        recipe.ingredients = {
            { "kr-" .. base_entity, 1 },
            { "logistic-chest-passive-provider", 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 2 },
        }
        recipe.result = recipe.name
        return recipe
    end

    local logistic_advanced_assembling_machine = createRecipe("advanced-assembling-machine")
    local logistic_advanced_chemical_plant = createRecipe("advanced-chemical-plant")
    local logistic_advanced_furnace = createRecipe("advanced-furnace")
    local logistic_fuel_refinery = createRecipe("fuel-refinery")
    local logistic_research_server = createRecipe("research-server")
    local logistic_quantum_computer = createRecipe("quantum-computer")
    data:extend({
        logistic_advanced_assembling_machine,
        logistic_advanced_chemical_plant,
        logistic_advanced_furnace,
        logistic_fuel_refinery,
        logistic_research_server,
        logistic_quantum_computer,
    })

    local function createLabRecipe(base_entity, name)
        local recipe = {}
        recipe.type = "recipe"
        recipe.name = "logistic-" .. name .. "-1"
        recipe.enabled = false
        recipe.ingredients = {
            { base_entity, 1 },
            { "logistic-chest-passive-provider", 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 2 },
        }
        recipe.result = recipe.name
        return recipe
    end

    local logistic_advanced_lab = createLabRecipe("biusart-lab", "advanced-lab")
    local logistic_singularity_lab = createLabRecipe("kr-singularity-lab", "singularity-lab")
    data:extend({
        logistic_advanced_lab,
        logistic_singularity_lab,
    })
end
