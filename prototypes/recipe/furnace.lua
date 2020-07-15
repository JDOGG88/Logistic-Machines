local function createRecipe(base_entity, version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-electric-" .. base_entity .. "-" .. version
    recipe.enabled = false
    recipe.ingredients = {
        { "logistic-chest-passive-provider", 1 },
        { "logistic-chest-requester", 1 },
        { "stack-inserter", 2 },
    }
    if version == 1 then
        table.insert(recipe.ingredients, { "electric-" .. base_entity, 1 })
    else
        table.insert(recipe.ingredients, { "electric-" .. base_entity .. "-" .. version, 1 })
    end
    recipe.result = recipe.name
    return recipe
end

data:extend({
    createRecipe("furnace", 1),
})

if mods["bobassembly"] then
    data:extend({
        createRecipe("furnace", 2),
        createRecipe("furnace", 3),
    })
end

if mods["bobplates"] then
    data:extend({
        createRecipe("mixing-furnace", 1),
        createRecipe("chemical-furnace", 1),
    })
end

if mods["bobplates"] and mods["bobassembly"] then
    data:extend({
        createRecipe("chemical-mixing-furnace", 1),
        createRecipe("chemical-mixing-furnace", 2),
    })
end
