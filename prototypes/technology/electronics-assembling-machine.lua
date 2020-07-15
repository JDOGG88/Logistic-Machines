local function createTechnology(tech_version)
    local technology = {}
    technology.type = "technology"
    technology.name = "logistic-electronics-machine-" .. tech_version
    technology.icon_size = 128
    technology.icons = {
        { icon = "__base__/graphics/technology/automation.png", icon_size = 128 },
        logistic_requester_chest_mask_tech,
        logistic_provider_chest_mask_tech,
    }
    technology.effects = {
        {
            type = "unlock-recipe",
            recipe = technology.name,
        },
    }
    technology.prerequisites = {
        "electronics-machine-" .. tech_version
    }
    technology.unit = {}
    technology.unit.time = 30
    if tech_version == 2 then
        technology.unit.count = 100
        technology.unit.ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } }
    else
        technology.unit.count = 200
        technology.unit.ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "chemical-science-pack", 1 } }
    end
    technology.order = "a"
    return technology
end

if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value == true then
    data:extend({
        createTechnology(2),
        createTechnology(3),
    })
end
