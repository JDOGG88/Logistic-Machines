local function assembly_set(entity)
    local provider = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + 1, (entity.position.y) - 0.8 }, force = entity.force }
    provider.destructible = false

    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 0.8, (entity.position.y) - 0.8 }, force = entity.force }
    requester.destructible = false

    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1", position = { (entity.position.x) - 1.5, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false

    local inserter_2 = entity.surface.create_entity { name = "invisible-inserter-2", position = { (entity.position.x) + 0.5, (entity.position.y) }, force = entity.force }
    inserter_2.destructible = false
    inserter_2.minable = false

    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false

    return
end

local function assembly_set_no_provider(entity)
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 0.8, (entity.position.y) - 0.8 }, force = entity.force }
    requester.destructible = false

    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1", position = { (entity.position.x) - 1.5, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false

    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false

    return
end

local machine =
{
    "logistic-assembling-machine-3",
    "logistic-assembling-machine-4",
    "logistic-assembling-machine-5",
    "logistic-assembling-machine-6",
    "logistic-chemical-plant-1",
    "logistic-chemical-plant-2",
    "logistic-chemical-plant-3",
    "logistic-chemical-plant-4",
    "logistic-electrolyser-2",
    "logistic-electrolyser-3",
    "logistic-electrolyser-4",
    "logistic-electrolyser-5",
    "logistic-electric-furnace-1",
    "logistic-electric-furnace-2",
    "logistic-electric-furnace-3",
    "logistic-electric-mixing-furnace-1",
    "logistic-chemical-furnace-1",
    "logistic-electric-chemical-mixing-furnace-1",
    "logistic-electric-chemical-mixing-furnace-2",
}

local lab =
{
    "logistic-lab-1",
    "logistic-lab-2",
}

script.on_event(defines.events.on_built_entity, function(event)
    for _, name in pairs(machine) do
        if (event.created_entity.name == name) then
            assembly_set(event.created_entity)
        end
    end
    for _, name in pairs(lab) do
        if (event.created_entity.name == name) then
            assembly_set_no_provider(event.created_entity)
        end
    end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    for _, name in pairs(machine) do
        if (event.created_entity.name == name) then
            assembly_set(event.created_entity)
        end
    end
    for _, name in pairs(lab) do
        if (event.created_entity.name == name) then
            assembly_set_no_provider(event.created_entity)
        end
    end
end)

script.on_event(defines.events.script_raised_revive, function(event)
    for _, name in pairs(machine) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set(entity)
        end
    end
    for _, name in pairs(lab) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_no_provider(entity)
        end
    end
end)

script.on_event(defines.events.script_raised_built, function(event)
    for _, name in pairs(machine) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set(entity)
        end
    end
    for _, name in pairs(lab) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_no_provider(entity)
        end
    end
end)

local mined_entity_name =
{
    "invisible-inserter-1",
    "invisible-inserter-2",
    "invisible-substation",
}
local mined_entity_name_lab =
{
    "invisible-inserter-1",
    "invisible-substation",
}
local area_var = 1.2

script.on_event(defines.events.on_player_mined_entity, function(event)
    for _, name in pairs(machine) do
        if (event.entity.name == name) then
            local center = event.entity.position
            for _, entity in pairs(event.entity.surface.find_entities_filtered {
                area = { { center.x - area_var, center.y - area_var }, { center.x + area_var, center.y + area_var } },
                name = mined_entity_name
            }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(lab) do
        if (event.entity.name == name) then
            local center = event.entity.position
            for _, entity in pairs(event.entity.surface.find_entities_filtered {
                area = { { center.x - area_var, center.y - area_var }, { center.x + area_var, center.y + area_var } },
                name = mined_entity_name_lab
            }) do
                entity.destroy()
            end
        end
    end
end)

script.on_event(defines.events.on_robot_mined_entity, function(event)
    for _, name in pairs(machine) do
        if (event.entity.name == name) then
            local center = event.entity.position
            for _, entity in pairs(event.entity.surface.find_entities_filtered {
                area = { { center.x - area_var, center.y - area_var }, { center.x + area_var, center.y + area_var } },
                name = mined_entity_name
            }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(lab) do
        if (event.entity.name == name) then
            local center = event.entity.position
            for _, entity in pairs(event.entity.surface.find_entities_filtered {
                area = { { center.x - area_var, center.y - area_var }, { center.x + area_var, center.y + area_var } },
                name = mined_entity_name_lab
            }) do
                entity.destroy()
            end
        end
    end
end)

script.on_event(defines.events.on_entity_died, function(event)
    for _, name in pairs(machine) do
        if (event.entity.name == name) then
            local center = event.entity.position
            for _, entity in pairs(event.entity.surface.find_entities_filtered {
                area = { { center.x - area_var, center.y - area_var }, { center.x + area_var, center.y + area_var } },
                name = mined_entity_name
            }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(lab) do
        if (event.entity.name == name) then
            local center = event.entity.position
            for _, entity in pairs(event.entity.surface.find_entities_filtered {
                area = { { center.x - area_var, center.y - area_var }, { center.x + area_var, center.y + area_var } },
                name = mined_entity_name_lab
            }) do
                entity.destroy()
            end
        end
    end
end)
