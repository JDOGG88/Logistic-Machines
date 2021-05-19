local function createTechnology(tech_name, tech_version, count, ingredients)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-electric-" .. tech_name .. "-" .. tech_version
    technology.icon_size = 256
    technology.icons = {
        { icon = "__base__/graphics/technology/advanced-material-processing-2.png" },
        logistic_requester_chest_mask_tech,
        logistic_provider_chest_mask_tech,
    }
    technology.effects = {
        {
            type = "unlock-recipe",
            recipe = technology.name,
        },
    }
    technology.prerequisites = {}
    technology.unit = {
        count = count,
        ingredients = ingredients,
        time = 30
    }
    technology.order = "a"
    return technology
end

local three_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } }
local four_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 } }
local five_sp = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 }, { "production-science-pack", 1 }, { "utility-science-pack", 1 } }

data:extend({
    createTechnology("furnace", 1, 200, three_sp),
})

table.insert(data.raw.technology["logistic-electric-furnace-1"].prerequisites, "advanced-material-processing-2")
table.insert(data.raw.technology["logistic-electric-furnace-1"].prerequisites, "logistic-robotics")

if mods["bobassembly"] then
    data:extend({
        createTechnology("furnace", 2, 100, four_sp),
        createTechnology("furnace", 3, 100, five_sp),
    })
    table.insert(data.raw.technology["logistic-electric-furnace-2"].prerequisites, "advanced-material-processing-3")
    table.insert(data.raw.technology["logistic-electric-furnace-2"].prerequisites, "logistic-electric-furnace-1")
    table.insert(data.raw.technology["logistic-electric-furnace-3"].prerequisites, "advanced-material-processing-4")
    table.insert(data.raw.technology["logistic-electric-furnace-3"].prerequisites, "logistic-electric-furnace-2")
end

if mods["bobplates"] then
    data:extend({
        createTechnology("mixing-furnace", 1, 75, three_sp),
        createTechnology("chemical-furnace", 1, 75, three_sp),
    })
    table.insert(data.raw.technology["logistic-electric-mixing-furnace-1"].prerequisites, "electric-mixing-furnace")
    table.insert(data.raw.technology["logistic-electric-chemical-furnace-1"].prerequisites, "electric-chemical-furnace")
end
if mods["bobassembly"] and mods["bobplates"] then
    data:extend({
        createTechnology("chemical-mixing-furnace", 1, 75, four_sp),
        createTechnology("chemical-mixing-furnace", 2, 100, five_sp),
    })
    table.insert(data.raw.technology["logistic-electric-chemical-mixing-furnace-1"].prerequisites, "multi-purpose-furnace-1")
    table.insert(data.raw.technology["logistic-electric-chemical-mixing-furnace-2"].prerequisites, "multi-purpose-furnace-2")
end
