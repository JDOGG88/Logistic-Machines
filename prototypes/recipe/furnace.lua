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

local logistic_furnace_1 = createRecipe("electric-furnace", 1)

data:extend({
    logistic_furnace_1,
})

if mods["bobassembly"] then
    local logistic_furnace_2 = createRecipe("electric-furnace", 2)
    local logistic_furnace_3 = createRecipe("electric-furnace", 3)
    data:extend({
        logistic_furnace_2,
        logistic_furnace_3,
    })
end

if mods["bobplates"] then
    local mixing_1 = createRecipe("electric-mixing-furnace", 1)
    local chemical_1 = createRecipe("chemical-furnace", 1)
    data:extend({
        mixing_1,
        chemical_1,
    })
end

if mods["bobplates"] and mods["bobassembly"] then
    local multi_1 = createRecipe("electric-chemical-mixing-furnace", 1)
    local multi_2 = createRecipe("electric-chemical-mixing-furnace", 2)
    data:extend({
        multi_1,
        multi_2,
    })
end
