local function createRecipe(base_entity, version)
    local recipe = {}
    recipe.type = "recipe"
    recipe.name = "logistic-" .. base_entity .. "-" .. version
    recipe.enabled = false
    if version == 1 then
        recipe.ingredients = {
            { base_entity, 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 1 },
        }
    else
        recipe.ingredients = {
            { base_entity .. "-" .. version, 1 },
            { "logistic-chest-requester", 1 },
            { "stack-inserter", 1 },
        }
    end
    recipe.result = recipe.name
    return recipe
end

local logistic_lab_1 = createRecipe("lab", 1)

data:extend({
    logistic_lab_1,
})

if mods["bobtech"] then
    local logistic_lab_2 = createRecipe("lab", 2)
    data:extend({
        logistic_lab_2,
    })
end
