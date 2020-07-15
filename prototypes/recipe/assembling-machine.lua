local function createRecipe(version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-assembling-machine-" .. version
    recipe.enabled = false
    recipe.ingredients = {
        { "assembling-machine-" .. version, 1 },
        { "logistic-chest-passive-provider", 1 },
        { "logistic-chest-requester", 1 },
        { "stack-inserter", 2 },
    }
    recipe.result = recipe.name
    return recipe
end

data:extend({
    createRecipe(3),
})

if mods["bobassembly"] then
    data:extend({
        createRecipe(4),
        createRecipe(5),
        createRecipe(6),
    })
end
