local function on_ass(entity)
    local ins20 = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + 1, (entity.position.y) - 0.8 }, force = entity.force }
    ins20.destructible = false
    --ins20.minable = false

    local ins21 = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 0.8, (entity.position.y) - 0.8 }, force = entity.force }
    ins21.destructible = false
    --ins21.minable = false

    local ins22 = entity.surface.create_entity { name = "invisible-inserter-1", position = { (entity.position.x) - 1.5, (entity.position.y) }, force = entity.force }
    ins22.destructible = false
    ins22.minable = false

    local ins23 = entity.surface.create_entity { name = "invisible-inserter-2", position = { (entity.position.x) + 0.5, (entity.position.y) }, force = entity.force }
    ins23.destructible = false
    ins23.minable = false

    local ins24 = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    ins24.destructible = false
    ins24.minable = false

    return true
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
}

script.on_event(defines.events.on_built_entity, function(event)
    for _, name in pairs(machine) do
        if (event.created_entity.name == name) then
            on_ass(event.created_entity)
        end
    end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    for _, name in pairs(machine) do
        if (event.created_entity.name == name) then
            on_ass(event.created_entity)
        end
    end
end)

script.on_event(defines.events.script_raised_revive, function(event)
    for _, name in pairs(machine) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            on_ass(entity)
        end
    end
end)

script.on_event(defines.events.script_raised_built, function(event)
    for _, name in pairs(machine) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            on_ass(entity)
        end
    end
end)

local mined_entity_name =
{
    "invisible-inserter-1",
    "invisible-inserter-2",
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
end)
