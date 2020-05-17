local function createRecipe(base_entity, version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-" .. base_entity .. "-" .. version
    recipe.enabled = false
    if version == 1 then
        recipe.ingredients = {
            { base_entity, 1 },
            { "logistic-chest-passive-provider", 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 2 },
        }
    else
        recipe.ingredients = {
            { base_entity .. "-" .. version, 1 },
            { "logistic-chest-passive-provider", 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 2 },
        }
    end
    recipe.result = recipe.name
    return recipe
end

local logistic_assembling_machine_3 = createRecipe("assembling-machine", 3)

data:extend({
    logistic_assembling_machine_3,
})

if mods["bobassembly"] then
    local logistic_assembling_machine_4 = createRecipe("assembling-machine", 4)
    local logistic_assembling_machine_5 = createRecipe("assembling-machine", 5)
    local logistic_assembling_machine_6 = createRecipe("assembling-machine", 6)
    data:extend({
        logistic_assembling_machine_4,
        logistic_assembling_machine_5,
        logistic_assembling_machine_6,
    })
end
