local function createRecipe(version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-nuclear-reactor-" .. version
    recipe.enabled = false
    recipe.ingredients = {
        { "logistic-chest-passive-provider", 1 },
        { "logistic-chest-requester", 1 },
        { "stack-inserter", 2 },
    }
    if version == 1 then
        table.insert(recipe.ingredients, { "nuclear-reactor", 1 })
    else
        table.insert(recipe.ingredients, { "nuclear-reactor-" .. version, 1 })
    end
    recipe.result = recipe.name
    return recipe
end

data:extend({
    createRecipe(1),
})

if mods["bobpower"] then
    data:extend({
        createRecipe(2),
        createRecipe(3),
    })
end
