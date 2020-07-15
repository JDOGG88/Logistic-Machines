local function createTechnology(tech_version)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-nuclear-power-" .. tech_version
    technology.icon_size = 128
    technology.icons = {
        { icon = "__base__/graphics/technology/nuclear-power.png", icon_size = 128 },
        logistic_requester_chest_mask_tech,
        logistic_provider_chest_mask_tech,
    }
    technology.effects = {
        {
            type = "unlock-recipe",
            recipe = "logistic-nuclear-reactor-" .. tech_version,
        },
    }
    technology.unit = {}
    technology.unit.time = 30
    technology.unit.count = 100
    if tech_version == 1 then
        technology.unit.ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
        }
        technology.prerequisites = {
            "nuclear-power"
        }
    elseif tech_version == 2 then
        technology.unit.ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
        }
        technology.prerequisites = {
            "bob-nuclear-power-" .. tech_version
        }
    elseif tech_version == 3 then
        technology.unit.ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
            { "utility-science-pack", 1 },
        }
        technology.prerequisites = {
            "bob-nuclear-power-" .. tech_version
        }
    end
    technology.order = "a"
    return technology
end

data:extend({
    createTechnology(1),
})

if mods["bobpower"] then
    data:extend({
        createTechnology(2),
        createTechnology(3),
    })
end
