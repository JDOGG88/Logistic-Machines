local function createRecipe(version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-chemical-plant-" .. version
    recipe.enabled = false
    recipe.ingredients = {
        { "logistic-chest-passive-provider", 1 },
        { "logistic-chest-requester", 1 },
        { "stack-inserter", 2 },
    }
    if version == 1 then
        table.insert(recipe.ingredients, { "chemical-plant", 1 })
    else
        table.insert(recipe.ingredients, { "chemical-plant-" .. version, 1 })
    end
    recipe.result = recipe.name
    return recipe
end

data:extend({
    createRecipe(1),
})

if mods["bobassembly"] then
    data:extend({
        createRecipe(2),
        createRecipe(3),
        createRecipe(4),
    })
end
