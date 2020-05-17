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

local logistic_chemical_plant_1 = createRecipe("chemical-plant", 1)

data:extend({
    logistic_chemical_plant_1,
})

if mods["bobassembly"] then
    local logistic_chemical_plant_2 = createRecipe("chemical-plant", 2)
    local logistic_chemical_plant_3 = createRecipe("chemical-plant", 3)
    local logistic_chemical_plant_4 = createRecipe("chemical-plant", 4)
    data:extend({
        logistic_chemical_plant_2,
        logistic_chemical_plant_3,
        logistic_chemical_plant_4,
    })
end
