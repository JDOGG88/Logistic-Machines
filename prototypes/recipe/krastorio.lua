if mods["Krastorio2"] then
    local function createRecipe(base_entity, name)
        local recipe = {}
        recipe.type = "recipe"
        if name == nil then
            recipe.name = "logistic-" .. base_entity .. "-1"
            recipe.ingredients = {
                { "kr-" .. base_entity, 1 },
                { "logistic-chest-passive-provider", 1 },
                { "logistic-chest-requester", 1 },
                { "stack-inserter", 2 },
            }
        else
            recipe.name = "logistic-" .. name .. "-1"
            recipe.ingredients = {
                { base_entity, 1 },
                { "logistic-chest-requester", 1 },
                { "stack-inserter", 1 },
            }
        end
        recipe.enabled = false
        recipe.result = recipe.name
        return recipe
    end

    data:extend({
        createRecipe("advanced-assembling-machine", nil),
        createRecipe("advanced-chemical-plant", nil),
        createRecipe("advanced-furnace", nil),
        createRecipe("fuel-refinery", nil),
        createRecipe("research-server", nil),
        createRecipe("quantum-computer", nil),
        createRecipe("biusart-lab", "advanced-lab"),
        createRecipe("kr-singularity-lab", "singularity-lab"),
    })
end
