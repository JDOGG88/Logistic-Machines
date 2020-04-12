if mods["bobassembly"] then
    data:extend({
        {
            type = "technology",
            name = "logistic-machines-1",
            icon_size = 128,
            icon = "__base__/graphics/technology/automation.png",
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-assembling-machine-3"
                },
                {
                    type = "unlock-recipe",
                    recipe = "logistic-chemical-plant-1"
                }
            },
            prerequisites = { "automation-3" },
            unit =
            {
                count = 75,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 }
                },
                time = 60
            },
            order = "a-b-c"
        },
        {
            type = "technology",
            name = "logistic-machines-2",
            icon_size = 128,
            icon = "__base__/graphics/technology/automation.png",
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-assembling-machine-4"
                },
                {
                    type = "unlock-recipe",
                    recipe = "logistic-chemical-plant-2"
                }
            },
            prerequisites =
            {
                "logistic-machines-1",
                "automation-4",
            },
            unit =
            {
                count = 150,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 }
                },
                time = 60
            },
            order = "a-b-c"
        },
        {
            type = "technology",
            name = "logistic-machines-3",
            icon_size = 128,
            icon = "__base__/graphics/technology/automation.png",
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-assembling-machine-5"
                },
                {
                    type = "unlock-recipe",
                    recipe = "logistic-chemical-plant-3"
                }
            },
            prerequisites =
            {
                "logistic-machines-2",
                "automation-5",
            },
            unit =
            {
                count = 300,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 }
                },
                time = 60
            },
            order = "a-b-c"
        },
        {
            type = "technology",
            name = "logistic-machines-4",
            icon_size = 128,
            icon = "__base__/graphics/technology/automation.png",
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-assembling-machine-6"
                },
                {
                    type = "unlock-recipe",
                    recipe = "logistic-chemical-plant-4"
                }
            },
            prerequisites =
            {
                "logistic-machines-3",
                "automation-6",
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 },
                    { "utility-science-pack", 1 }
                },
                time = 60
            },
            order = "a-b-c"
        },
    })
else
    data:extend({
        {
            type = "technology",
            name = "logistic-machines-1",
            icon_size = 128,
            icon = "__base__/graphics/technology/automation.png",
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "logistic-assembling-machine-3"
                },
                {
                    type = "unlock-recipe",
                    recipe = "logistic-chemical-plant-1"
                }
            },
            prerequisites = { "automation-3" },
            unit =
            {
                count = 75,
                ingredients =
                {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "production-science-pack", 1 }
                },
                time = 60
            },
            order = "a-b-c"
        },
    })
end
