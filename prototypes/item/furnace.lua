local function createFurnace(version)
    local cf = table.deepcopy(data.raw.item["electric-furnace"])
    cf.name = "logistic-electric-furnace-" .. version
    cf.icons = { { icon = data.raw.item["electric-furnace"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    cf.icon_size = 32
    cf.place_result = cf.name
    return cf
end

local furnace_1 = createFurnace(1)

data:extend({
    furnace_1,
})

if mods["bobassembly"] then
    local function createBobFurnace(version)
        local cf = table.deepcopy(data.raw.item["electric-furnace-" .. version])
        cf.name = "logistic-electric-furnace-" .. version
        cf.icons = { { icon = data.raw.item["electric-furnace"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.place_result = cf.name
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
        local cf = table.deepcopy(data.raw.item[type .. "-furnace"])
        cf.name = "logistic-" .. type .. "-furnace-" .. version
        cf.icons = { { icon = data.raw.item[type .. "-furnace"].icon, icon_size = 32 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.place_result = cf.name
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
        local cf = table.deepcopy(data.raw.item["electric-chemical-mixing-furnace"])
        cf.name = "logistic-electric-chemical-mixing-furnace-" .. version
        cf.icons = { { icon = data.raw.item["electric-chemical-mixing-furnace"].icon, icon_size = 32 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.place_result = cf.name
        return cf
    end

    local function createBobMultiFurnace(version)
        local cf = table.deepcopy(data.raw.item["electric-chemical-mixing-furnace-" .. version])
        cf.name = "logistic-electric-chemical-mixing-furnace-" .. version
        cf.icons = { { icon = data.raw.item["electric-chemical-mixing-furnace"].icon, icon_size = 32 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        cf.icon_size = 32
        cf.place_result = cf.name
        return cf
    end

    local multi_1 = createBobMultiFurnace1(1)
    local multi_2 = createBobMultiFurnace(2)

    data:extend({
        multi_1,
        multi_2,
    })
end
