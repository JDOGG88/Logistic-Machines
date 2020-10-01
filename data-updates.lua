if data.raw.item["logistic-electronics-machine-2"] then
    data.raw.item["logistic-electronics-machine-2"].icons = { { icon = data.raw.item["electronics-machine-2"].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
end

if data.raw.item["logistic-assembling-machine-3"] then
    data.raw.item["logistic-assembling-machine-3"].icons = { { icon = data.raw.item["assembling-machine-3"].icon, icon_size = data.raw.item["assembling-machine-3"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-assembling-machine-3"].animation.layers = data.raw["assembling-machine"]["assembling-machine-3"].animation.layers
end

if data.raw.item["logistic-assembling-machine-4"] then
    data.raw.item["logistic-assembling-machine-4"].icons = { { icon = data.raw.item["assembling-machine-4"].icon, icon_size = data.raw.item["assembling-machine-4"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-assembling-machine-4"].animation.layers = data.raw["assembling-machine"]["assembling-machine-4"].animation.layers
end

if data.raw.item["logistic-assembling-machine-5"] then
    data.raw.item["logistic-assembling-machine-5"].icons = { { icon = data.raw.item["assembling-machine-5"].icon, icon_size = data.raw.item["assembling-machine-5"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-assembling-machine-5"].animation.layers = data.raw["assembling-machine"]["assembling-machine-5"].animation.layers
end

if data.raw.item["logistic-assembling-machine-6"] then
    data.raw.item["logistic-assembling-machine-6"].icons = { { icon = data.raw.item["assembling-machine-6"].icon, icon_size = data.raw.item["assembling-machine-6"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-assembling-machine-6"].animation.layers = data.raw["assembling-machine"]["assembling-machine-6"].animation.layers
end

if data.raw.item["logistic-chemical-plant-1"] then
    data.raw.item["logistic-chemical-plant-1"].icons = { { icon = data.raw.item["chemical-plant"].icon, icon_size = data.raw.item["chemical-plant"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-chemical-plant-1"].animation = data.raw["assembling-machine"]["chemical-plant"].animation
end

if data.raw.item["logistic-chemical-plant-2"] then
    data.raw.item["logistic-chemical-plant-2"].icons = { { icon = data.raw.item["chemical-plant-2"].icon, icon_size = data.raw.item["chemical-plant-2"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-chemical-plant-2"].animation = data.raw["assembling-machine"]["chemical-plant-2"].animation
end

if data.raw.item["logistic-chemical-plant-3"] then
    data.raw.item["logistic-chemical-plant-3"].icons = { { icon = data.raw.item["chemical-plant-3"].icon, icon_size = data.raw.item["chemical-plant-3"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-chemical-plant-3"].animation = data.raw["assembling-machine"]["chemical-plant-3"].animation
end

if data.raw.item["logistic-chemical-plant-4"] then
    data.raw.item["logistic-chemical-plant-4"].icons = { { icon = data.raw.item["chemical-plant-4"].icon, icon_size = data.raw.item["chemical-plant-4"].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    data.raw["assembling-machine"]["logistic-chemical-plant-4"].animation = data.raw["assembling-machine"]["chemical-plant-4"].animation
end
