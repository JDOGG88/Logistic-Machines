local function createTechnology(tech_version, count, ingredients)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-machines-" .. tech_version
    technology.icon_size = 256
    if tech_version == 4 then
        technology.icons = {
            { icon = "__base__/graphics/technology/automation-3.png" },
            logistic_requester_chest_mask_tech,
            logistic_provider_chest_mask_tech,
        }
    else
        technology.icons = {
            { icon = "__base__/graphics/technology/automation-" .. tech_version .. ".png" },
            logistic_requester_chest_mask_tech,
            logistic_provider_chest_mask_tech,
        }
    end
    technology.effects = {
        {
            type = "unlock-recipe",
            recipe = "logistic-assembling-machine-" .. (tech_version + 2),
        },
        {
            type = "unlock-recipe",
            recipe = "logistic-chemical-plant-" .. tech_version,
        },
    }
    if tech_version == 1 then
        technology.prerequisites = {
            "logistic-robotics",
            "automation-" .. (tech_version + 2),
        }
    else
        technology.prerequisites = {
            "logistic-machines-" .. (tech_version - 1),
            "automation-" .. (tech_version + 2),
        }
    end
    technology.unit = {
        count = count,
        ingredients = ingredients,
        time = 60
    }
    technology.order = "a"
    return technology
end

local three_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } }
local four_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 } }
local five_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 } }

data:extend({
    createTechnology(1, 75, three_sp),
})

if mods["bobassembly"] then
    data:extend({
        createTechnology(2, 150, four_sp),
        createTechnology(3, 300, four_sp),
        createTechnology(4, 200, five_sp),
    })
end
