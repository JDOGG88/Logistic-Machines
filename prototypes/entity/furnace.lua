local function createFurnace(version)
    local cf = table.deepcopy(data.raw.furnace["electric-furnace"])
    cf.name = "logistic-electric-furnace-" .. version
    cf.minable = { hardness = 0.2, mining_time = 0.5, result = cf.name }
    cf.icons = { { icon = data.raw.furnace["electric-furnace"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    cf.icon_size = 32
    cf.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
    return cf
end

local furnace_1 = createFurnace(1)

data:extend({
    furnace_1,
})

if mods["bobassembly"] then
    local function createBobFurnace(version)
        local cf = table.deepcopy(data.raw.furnace["electric-furnace-" .. version])
        cf.name = "logistic-electric-furnace-" .. version
        cf.minable = { hardness = 0.2, mining_time = 0.5, result = cf.name }
        cf.icons = { { icon = data.raw.furnace["electric-furnace"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
        return cf
    end

    local furnace_2 = createBobFurnace(2)
    local furnace_3 = createBobFurnace(3)

    data:extend({
        furnace_2,
        furnace_3,
    })
end

if mods["bobplates"] then
    local function createBobChemFurnace(version, type)
        local cf = table.deepcopy(data.raw["assembling-machine"][type .. "-furnace"])
        cf.name = "logistic-" .. type .. "-furnace-" .. version
        cf.minable = { hardness = 0.2, mining_time = 0.5, result = cf.name }
        cf.icons = { { icon = data.raw["assembling-machine"][type .. "-furnace"].icon, icon_size = 32 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
        return cf
    end

    local mixing_1 = createBobChemFurnace(1, "electric-mixing")
    local chemical_1 = createBobChemFurnace(1, "chemical")

    data:extend({
        mixing_1,
        chemical_1,
    })
end

if mods["bobplates"] and mods["bobassembly"] then
    local function createBobMultiFurnace1(version)
        local cf = table.deepcopy(data.raw["assembling-machine"]["electric-chemical-mixing-furnace"])
        cf.name = "logistic-electric-chemical-mixing-furnace-" .. version
        cf.minable = { hardness = 0.2, mining_time = 0.5, result = cf.name }
        cf.icons = { { icon = data.raw["assembling-machine"]["electric-chemical-mixing-furnace"].icon, icon_size = 32 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
        return cf
    end

    local function createBobMultiFurnace(version)
        local cf = table.deepcopy(data.raw["assembling-machine"]["electric-chemical-mixing-furnace-" .. version])
        cf.name = "logistic-electric-chemical-mixing-furnace-" .. version
        cf.minable = { hardness = 0.2, mining_time = 0.5, result = cf.name }
        cf.icons = { { icon = data.raw["assembling-machine"]["electric-chemical-mixing-furnace-" .. version].icon, icon_size = 32 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
        return cf
    end

    local multi_1 = createBobMultiFurnace1(1)
    local multi_2 = createBobMultiFurnace(2)

    data:extend({
        multi_1,
        multi_2,
    })
end
