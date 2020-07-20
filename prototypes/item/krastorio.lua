if mods["Krastorio2"] then
    local function createItem(name)
        local ci
        if name == "biusart-lab" then
            ci = table.deepcopy(data.raw.item[name])
            ci.name = "logistic-advanced-lab-1"
            ci.icons = { { icon = "__Krastorio2__/graphics/icons/entities/" .. name .. ".png", icon_size = 64 }, logistic_requester_chest_mask }
            ci.localised_name = lm_localised_name("logistic-advanced-lab", "")
            ci.localised_description = lm_item_localised_description_lab
        elseif name == "singularity-lab" then
            ci = table.deepcopy(data.raw.item["kr-" .. name])
            ci.name = "logistic-" .. name .. "-1"
            ci.icons = { { icon = "__Krastorio2__/graphics/icons/entities/" .. name .. ".png", icon_size = 64 }, logistic_requester_chest_mask }
            ci.localised_name = lm_localised_name("logistic-singularity-lab", "")
            ci.localised_description = lm_item_localised_description_lab
        else
            ci = table.deepcopy(data.raw.item["kr-" .. name])
            ci.name = "logistic-" .. name .. "-1"
            ci.icons = { { icon = "__Krastorio2__/graphics/icons/entities/" .. name .. ".png", icon_size = data.raw.item["kr-" .. name].icon_size }, logistic_requester_chest_mask, logistic_provider_chest_mask }
            ci.localised_name = lm_localised_name("logistic-" .. name, "")
            ci.localised_description = lm_item_localised_description_main
        end
        ci.icon_size = 64
        ci.place_result = ci.name
        return ci
    end
    
    data:extend({
        createItem("advanced-assembling-machine"),
        createItem("advanced-chemical-plant"),
        createItem("advanced-furnace"),
        createItem("fuel-refinery"),
        createItem("research-server"),
        createItem("quantum-computer"),
        createItem("biusart-lab"),
        createItem("singularity-lab"),
    })
end
