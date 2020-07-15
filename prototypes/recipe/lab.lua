local function createRecipe(version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-lab-" .. version
    recipe.enabled = false
    if version == 1 then
        recipe.ingredients = {
            { "lab", 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 1 },
        }
    else
        recipe.ingredients = {
            { "lab-" .. version, 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 1 },
        }
    end
    recipe.result = recipe.name
    return recipe
end

data:extend({
    createRecipe(1),
})

if mods["bobtech"] then
    data:extend({
        createRecipe(2),
    })
end
