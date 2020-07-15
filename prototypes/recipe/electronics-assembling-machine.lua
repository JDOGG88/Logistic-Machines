local function createRecipe(version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-electronics-machine-" .. version
    recipe.enabled = false
    recipe.ingredients = {
        { "electronics-machine-" .. version, 1 },
        { "logistic-chest-passive-provider", 1 },
        { "logistic-chest-requester", 1 },
        { "stack-inserter", 2 },
    }
    recipe.result = recipe.name
    return recipe
end

if mods["bobassembly"] then
    if settings.startup["bobmods-assembly-electronicmachines"].value == true then
        data:extend({
            createRecipe(2),
            createRecipe(3),
        })
    end
end
