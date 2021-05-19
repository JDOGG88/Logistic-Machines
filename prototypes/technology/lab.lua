local function createTechnology(tech_version)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-lab-" .. tech_version
    technology.icon_size = 256
    technology.icons = {
        { icon = "__base__/graphics/technology/research-speed.png" },
        logistic_requester_chest_mask_tech,
    }
    technology.effects = {
        {
            type = "unlock-recipe",
            recipe = technology.name,
        },
    }
    technology.prerequisites = {}
    technology.unit = {
        count = 150,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
        },
        time = 30
    }
    technology.order = "a"
    return technology
end

data:extend({
    createTechnology(1)
})
table.insert(data.raw.technology["logistic-lab-1"].prerequisites, "logistic-robotics")

if mods["bobtech"] then
    local lab_tech_2 = createTechnology(2)
    data:extend({
        lab_tech_2,
    })
    table.insert(data.raw.technology["logistic-lab-2"].prerequisites, "advanced-electronics")
    table.insert(data.raw.technology["logistic-lab-2"].prerequisites, "logistics-3")
    table.insert(data.raw.technology["logistic-lab-2"].prerequisites, "logistic-lab-1")
end
