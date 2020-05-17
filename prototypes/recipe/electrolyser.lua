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

if mods["bobplates"] and mods["bobassembly"] then
    local logistic_electrolyser_2 = createRecipe("electrolyser", 2)
    local logistic_electrolyser_3 = createRecipe("electrolyser", 3)
    local logistic_electrolyser_4 = createRecipe("electrolyser", 4)
    local logistic_electrolyser_5 = createRecipe("electrolyser", 5)
    data:extend({
        logistic_electrolyser_2,
        logistic_electrolyser_3,
        logistic_electrolyser_4,
        logistic_electrolyser_5,
    })
end
