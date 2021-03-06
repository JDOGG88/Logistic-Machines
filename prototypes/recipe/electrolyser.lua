local function createRecipe(version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-electrolyser-" .. version
    recipe.enabled = false
    recipe.ingredients = {
        { "electrolyser-" .. version, 1 },
        { "logistic-chest-passive-provider", 1 },
        { "logistic-chest-requester", 1 },
        { "stack-inserter", 2 },
    }
    recipe.result = recipe.name
    return recipe
end

if mods["bobplates"] and mods["bobassembly"] then
    data:extend({
        createRecipe(2),
        createRecipe(3),
        createRecipe(4),
        createRecipe(5),
    })
end
