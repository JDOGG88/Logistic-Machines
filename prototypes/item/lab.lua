local function createLab(version)
    local cl = table.deepcopy(data.raw.item.lab)
    cl.name = "logistic-lab-" .. version
    cl.icons = { { icon = data.raw.lab.lab.icon, icon_size = data.raw.lab.lab.icon_size }, logistic_requester_chest_mask, }
    cl.icon_size = 32
    cl.place_result = cl.name
    return cl
end

local lab_1 = createLab(1)

data:extend({
    lab_1,
})

if mods["bobtech"] then
    local function createBobLab(version)
        local cl = table.deepcopy(data.raw.item["lab-2"])
        cl.name = "logistic-lab-" .. version
        cl.icons = { { icon = "__bobtech__/graphics/icons/lab2.png", icon_size = 32 }, logistic_requester_chest_mask, }
        cl.icon_size = 32
        cl.place_result = cl.name
        return cl
    end

    local lab_2 = createBobLab(2)

    data:extend({
        lab_2,
    })
end
