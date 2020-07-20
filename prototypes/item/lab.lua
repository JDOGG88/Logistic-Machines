local function createLab(version)
    local cl
    if version == 1 then
        cl = table.deepcopy(data.raw.item.lab)
        cl.icons = { { icon = data.raw.lab.lab.icon, icon_size = data.raw.lab.lab.icon_size }, logistic_requester_chest_mask, }
    else
        cl = table.deepcopy(data.raw.item["lab-2"])
        cl.icons = { { icon = "__bobtech__/graphics/icons/lab2.png", icon_size = 32 }, logistic_requester_chest_mask, }
    end
    cl.name = "logistic-lab-" .. version
    cl.icon_size = 32
    cl.place_result = cl.name
    cl.localised_name = lm_localised_name("logistic-lab", version)
    cl.localised_description = lm_localised_description_lab
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
