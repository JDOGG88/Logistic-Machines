local function createLab(version)
    local cl
    if version == 1 then
        cl = table.deepcopy(data.raw.lab.lab)
        cl.icons = { { icon = data.raw.lab.lab.icon, icon_size = data.raw.lab.lab.icon_size }, logistic_requester_chest_mask, }
    else
        cl = table.deepcopy(data.raw.lab["lab-2"])
        cl.icons = { { icon = "__bobtech__/graphics/icons/lab2.png", icon_size = 32 }, logistic_requester_chest_mask, }
    end
    cl.name = "logistic-lab-" .. version
    cl.minable = { hardness = 0.2, mining_time = 0.5, result = cl.name }
    cl.localised_name = lm_localised_name("logistic-lab", version)
    cl.localised_description = lm_localised_description_lab
    cl.icon_size = 32
    return cl
end

data:extend({
    createLab(1),
})

if mods["bobtech"] then
    data:extend({
        createLab(2),
    })
end

if mods["Krastorio2"] then
    data.raw.lab["logistic-lab-1"].inputs = { "basic-tech-card", "automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack" }
end
