if mods["bobassembly"] then
    table.insert(data.raw["assembling-machine"]["assembling-machine-3"].animation.layers,
        {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 142,
            height = 113,
            repeat_count = 32,
            shift = { 0.84, -0.09 },
            tint = { r = 0.7, g = 0.2, b = 0.1 }
        })
    data.raw["assembling-machine"]["assembling-machine-4"].animation =
    {
        layers =
        {
            {
                filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2.png",
                priority = "high",
                width = 108,
                height = 110,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(0, 4),
                hr_version =
                {
                    filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2.png",
                    priority = "high",
                    width = 214,
                    height = 218,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, 4),
                    scale = 0.5
                }
            },
            {
                filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
                priority = "high",
                width = 142,
                height = 113,
                repeat_count = 32,
                shift = { 0.84, -0.09 },
                tint = { r = 0.1, g = 0.5, b = 0.7 }
            },
            {
                filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-shadow.png",
                priority = "high",
                width = 98,
                height = 82,
                frame_count = 32,
                line_length = 8,
                draw_as_shadow = true,
                shift = util.by_pixel(12, 5),
                hr_version =
                {
                    filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2-shadow.png",
                    priority = "high",
                    width = 196,
                    height = 163,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(12, 4.75),
                    scale = 0.5
                }
            }
        }
    }
    data.raw["assembling-machine"]["assembling-machine-5"].animation.layers[2].tint = { r = 0.7, g = 0.1, b = 0.7 }
end

function createMachine(version)
    local cm = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-" .. version])
    cm.name = "logistic-assembling-machine-" .. version
    if mods["bobassembly"] then
        if version == 6 then
            cm.icons = { { icon = "__bobassembly__/graphics/icons/assembling-machine-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        else
            cm.icons = { { icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        end
    else
        cm.icons = { { icon = "__base__/graphics/icons/assembling-machine-" .. version .. ".png", icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    end
    cm.icon_size = 32
    cm.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-assembling-machine-" .. version }
    cm.selection_box = { { -1.5, 0 }, { 1.5, 1.5 } }
    cm.fast_replaceable_group = "assembling-machine"
    cm.energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.03 / 3.5
    }
    return cm
end

if not mods["bobassembly"] then
    local logistic_assembling_machine_3 = createMachine(3)
    data:extend({
        logistic_assembling_machine_3,
    })
else
    local logistic_assembling_machine_3 = createMachine(3)
    local logistic_assembling_machine_4 = createMachine(4)
    local logistic_assembling_machine_5 = createMachine(5)
    local logistic_assembling_machine_6 = createMachine(6)
    data:extend({
        logistic_assembling_machine_3,
        logistic_assembling_machine_4,
        logistic_assembling_machine_5,
        logistic_assembling_machine_6,
    })
end
