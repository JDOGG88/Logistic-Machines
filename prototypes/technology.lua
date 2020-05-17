local function createMachineTechnology(version, count)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-machines-" .. version
    technology.icon_size = 128
    technology.icon = "__base__/graphics/technology/automation.png"
    technology.effects = {}
    if version == 1 then
        technology.prerequisites = { "automation-" .. (version + 2) }
    else
        technology.prerequisites = {
            "logistic-machines-" .. (version - 1),
            "automation-" .. (version + 2),
        }
    end
    technology.unit =
    {
        count = count,
        ingredients =
        {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
        },
        time = 60
    }
    technology.order = "a-b-c"
    return technology
end

local tech_1 = createMachineTechnology(1, 75)

data:extend({
    tech_1,
})

if mods["bobassembly"] then
    local tech_2 = createMachineTechnology(2, 150)
    local tech_3 = createMachineTechnology(3, 300)
    local tech_4 = createMachineTechnology(4, 200)
    data:extend({
        tech_2,
        tech_3,
        tech_4,
    })
end

table.insert(data.raw.technology["logistic-machines-1"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-3" })
table.insert(data.raw.technology["logistic-machines-1"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-1" })

if mods["bobassembly"] then
    table.insert(data.raw.technology["logistic-machines-2"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-4" })
    table.insert(data.raw.technology["logistic-machines-2"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-2" })
    table.insert(data.raw.technology["logistic-machines-3"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-5" })
    table.insert(data.raw.technology["logistic-machines-3"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-3" })
    table.insert(data.raw.technology["logistic-machines-4"].effects, { type = "unlock-recipe", recipe = "logistic-assembling-machine-6" })
    table.insert(data.raw.technology["logistic-machines-4"].effects, { type = "unlock-recipe", recipe = "logistic-chemical-plant-4" })
    table.insert(data.raw.technology["logistic-machines-4"].unit.ingredients, { "utility-science-pack", 1 })
    if mods["bobplates"] then
        table.insert(data.raw.technology["logistic-machines-1"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-2" })
        table.insert(data.raw.technology["logistic-machines-2"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-3" })
        table.insert(data.raw.technology["logistic-machines-3"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-4" })
        table.insert(data.raw.technology["logistic-machines-4"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-5" })
    end
end

data:extend({
    {
        type = "technology",
        name = "logistic-lab",
        icons = {
            { icon = "__Logistic-Machines__/graphics/technology/lab.png", icon_size = 128 },
            { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "logistic-lab-1"
            },
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
            },
            time = 30
        },
        prerequisites =
        {
            "logistic-robotics"
        },
        order = "a"
    },
})

if mods["bobtech"] then
    data:extend({
        {
            type = "technology",
            name = "logistic-lab-2",
            icons = {
                { icon = "__Logistic-Machines__/graphics/technology/lab.png", icon_size = 128 },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
            },
            order = "c-k-m-a",
            prerequisites =
            {
                "advanced-electronics",
                "logistics-3",
                "logistic-lab",
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-lab-2"
                },
            },
            unit =
            {
                count = 100,
                time = 30,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                },
            },
        },
    })
end

data:extend({
    {
        type = "technology",
        name = "logistic-electric-furnace-1",
        icons = {
            { icon = "__base__/graphics/technology/advanced-material-processing.png", icon_size = 128 },
            { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
            { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 },
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "logistic-electric-furnace-1"
            },
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
            },
            time = 30
        },
        prerequisites =
        {
            "advanced-material-processing-2",
            "logistic-robotics",
        },
        order = "a"
    },
})

if mods["bobassembly"] then
    data:extend({
        {
            type = "technology",
            name = "logistic-electric-furnace-2",
            icons = {
                { icon = "__base__/graphics/technology/advanced-material-processing.png", icon_size = 128 },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 },
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-electric-furnace-2"
                },
            },
            unit =
            {
                count = 100,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 },
                },
                time = 30
            },
            prerequisites =
            {
                "advanced-material-processing-3",
                "logistic-electric-furnace-1",
            },
            order = "a"
        },
        {
            type = "technology",
            name = "logistic-electric-furnace-3",
            icons = {
                { icon = "__base__/graphics/technology/advanced-material-processing.png", icon_size = 128 },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 },
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-electric-furnace-3"
                },
            },
            unit =
            {
                count = 100,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 },
                    { "utility-science-pack", 1 },
                },
                time = 30
            },
            prerequisites =
            {
                "advanced-material-processing-4",
                "logistic-electric-furnace-2",
            },
            order = "a"
        },
    })
end

if mods["bobplates"] then
    data:extend({
        {
            type = "technology",
            name = "logistic-electric-mixing-furnace-1",
            icons = {
                { icon = "__base__/graphics/technology/advanced-material-processing.png", icon_size = 128 },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 },
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-electric-mixing-furnace-1",
                },
            },
            unit =
            {
                count = 75,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                },
                time = 30
            },
            prerequisites =
            {
                "alloy-processing-2",
            },
            order = "a"
        },
        {
            type = "technology",
            name = "logistic-chemical-furnace-1",
            icons = {
                { icon = "__base__/graphics/technology/advanced-material-processing.png", icon_size = 128 },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 },
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-chemical-furnace-1",
                },
            },
            unit =
            {
                count = 75,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                },
                time = 30
            },
            prerequisites =
            {
                "chemical-processing-3",
            },
            order = "a"
        },
    })
end
if mods["bobplates"] and mods["bobassembly"] then


    data:extend({
        {
            type = "technology",
            name = "logistic-electric-chemical-mixing-furnace-1",
            icons = {
                { icon = "__base__/graphics/technology/advanced-material-processing.png", icon_size = 128 },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 },
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-electric-chemical-mixing-furnace-1",
                },
            },
            unit =
            {
                count = 75,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 },
                },
                time = 30
            },
            prerequisites =
            {
                "multi-purpose-furnace-1",
            },
            order = "a"
        },
        {
            type = "technology",
            name = "logistic-electric-chemical-mixing-furnace-2",
            icons = {
                { icon = "__base__/graphics/technology/advanced-material-processing.png", icon_size = 128 },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 },
            },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-electric-chemical-mixing-furnace-2",
                },
            },
            unit =
            {
                count = 100,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 },
                    { "utility-science-pack", 1 },
                },
                time = 30
            },
            prerequisites =
            {
                "multi-purpose-furnace-2",
            },
            order = "a"
        },
    })
end
