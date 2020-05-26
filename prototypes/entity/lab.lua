local function createLab(version)
    local cl = table.deepcopy(data.raw.lab.lab)
    cl.name = "logistic-lab-" .. version
    cl.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-lab-" .. version }
    cl.icons = { { icon = data.raw.lab.lab.icon, icon_size = data.raw.lab.lab.icon_size }, logistic_requester_chest_mask, }
    cl.icon_size = 32
    cl.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
    return cl
end

local lab_1 = createLab(1)

data:extend({
    lab_1,
})

if mods["Krastorio2"] then
    data.raw.lab["logistic-lab-1"].inputs = { "basic-tech-card", "automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack" }
end

if mods["bobtech"] then
    local function createBobLab(version)
        local cl = table.deepcopy(data.raw.lab["lab-2"])
        cl.name = "logistic-lab-" .. version
        cl.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-lab-" .. version }
        cl.icons = { { icon = "__bobtech__/graphics/icons/lab2.png", icon_size = 32 }, logistic_requester_chest_mask, }
        cl.icon_size = 32
        cl.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
        return cl
    end

    local lab_2 = createBobLab(2)

    data:extend({
        lab_2,
    })
end
