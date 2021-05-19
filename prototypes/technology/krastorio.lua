local function createTechnology(tech_name, count, base_tech, time)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-" .. tech_name .. "-1"
    technology.icon_size = 256
    if tech_name == "advanced-lab" then
        technology.icons = {
            { icon = "__Krastorio2__/graphics/technologies/biusart-lab.png" },
            logistic_requester_chest_mask_tech,
        }
    elseif tech_name == "singularity-lab" then
        technology.icons = {
            { icon = "__Krastorio2__/graphics/technologies/" .. tech_name .. ".png" },
            logistic_requester_chest_mask_tech,
        }
    else
        technology.icons = {
            { icon = "__Krastorio2__/graphics/technologies/" .. tech_name .. ".png" },
            logistic_requester_chest_mask_tech,
            logistic_provider_chest_mask_tech,
        }
    end
    technology.effects = {
        {
            type = "unlock-recipe",
            recipe = technology.name,
        },
    }
    technology.prerequisites = {
        base_tech,
        "logistic-robotics",
    }
    technology.unit = {
        count = count,
        ingredients = data.raw.technology[base_tech].unit.ingredients,
        time = time
    }
    technology.order = "a"
    return technology
end

if mods["Krastorio2"] then
    data:extend({
        createTechnology("advanced-assembling-machine", 250, "kr-automation", 30),
        createTechnology("advanced-chemical-plant", 250, "kr-advanced-chemical-plant", 30),
        createTechnology("advanced-furnace", 250, "kr-advanced-furnace", 30),
        createTechnology("advanced-lab", 150, "kr-advanced-lab", 30),
        createTechnology("fuel-refinery", 50, "kr-fuel", 30),
        createTechnology("research-server", 200, "kr-research-server", 30),
        createTechnology("quantum-computer", 300, "kr-quantum-computer", 60),
        createTechnology("singularity-lab", 300, "kr-singularity-lab", 60),
    })
end
