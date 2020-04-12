if mods["bobassembly"] then
    data:extend({
        {
            type = "recipe",
            name = "logistic-assembling-machine-3",
            enabled = false,
            ingredients =
            {
                { "assembling-machine-3", 1 },
                { "logistic-chest-passive-provider", 1 },
                { "logistic-chest-requester", 1 },
                { "stack-inserter", 2 },
            },
            result = "logistic-assembling-machine-3"
        },
        {
            type = "recipe",
            name = "logistic-assembling-machine-4",
            enabled = false,
            ingredients =
            {
                { "logistic-assembling-machine-3", 1 },
                { "assembling-machine-4", 1 },
            },
            result = "logistic-assembling-machine-4"
        },
        {
            type = "recipe",
            name = "logistic-assembling-machine-5",
            enabled = false,
            ingredients =
            {
                { "logistic-assembling-machine-4", 1 },
                { "assembling-machine-5", 1 },
            },
            result = "logistic-assembling-machine-5"
        },
        {
            type = "recipe",
            name = "logistic-assembling-machine-6",
            enabled = false,
            ingredients =
            {
                { "logistic-assembling-machine-5", 1 },
                { "assembling-machine-6", 1 },
            },
            result = "logistic-assembling-machine-6"
        },
        {
            type = "recipe",
            name = "logistic-chemical-plant-1",
            enabled = false,
            ingredients =
            {
                { "chemical-plant", 1 },
                { "logistic-chest-passive-provider", 1 },
                { "logistic-chest-requester", 1 },
                { "stack-inserter", 2 },
            },
            result = "logistic-chemical-plant-1"
        },
        {
            type = "recipe",
            name = "logistic-chemical-plant-2",
            enabled = false,
            ingredients =
            {
                { "logistic-chemical-plant-1", 1 },
                { "chemical-plant-2", 1 },
            },
            result = "logistic-chemical-plant-2"
        },
        {
            type = "recipe",
            name = "logistic-chemical-plant-3",
            enabled = false,
            ingredients =
            {
                { "logistic-chemical-plant-2", 1 },
                { "chemical-plant-3", 1 },
            },
            result = "logistic-chemical-plant-3"
        },
        {
            type = "recipe",
            name = "logistic-chemical-plant-4",
            enabled = false,
            ingredients =
            {
                { "logistic-chemical-plant-3", 1 },
                { "chemical-plant-4", 1 },
            },
            result = "logistic-chemical-plant-4"
        },
    })
else
    data:extend({
        {
            type = "recipe",
            name = "logistic-assembling-machine-3",
            enabled = false,
            ingredients =
            {
                { "assembling-machine-3", 1 },
                { "logistic-chest-passive-provider", 1 },
                { "logistic-chest-requester", 1 },
                { "stack-inserter", 2 },
            },
            result = "logistic-assembling-machine-3"
        },
        {
            type = "recipe",
            name = "logistic-chemical-plant-1",
            enabled = false,
            ingredients =
            {
                { "chemical-plant", 1 },
                { "logistic-chest-passive-provider", 1 },
                { "logistic-chest-requester", 1 },
                { "stack-inserter", 2 },
            },
            result = "logistic-chemical-plant-1"
        },
    })
end
