local function createRecipe(base_entity, version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-" .. base_entity .. "-" .. version
    recipe.enabled = false
    recipe.ingredients = {
        { base_entity .. "-" .. version, 1 },
        { "logistic-chest-passive-provider", 1 },
        { "logistic-chest-requester", 1 },
        { "stack-inserter", 2 },
    }
    recipe.result = recipe.name
    return recipe
end

if mods["bobassembly"] then
    local logistic_electronics_machine_2 = createRecipe("electronics-machine", 2)
    local logistic_electronics_machine_3 = createRecipe("electronics-machine", 3)
    data:extend({
        logistic_electronics_machine_2,
        logistic_electronics_machine_3,
    })
end
