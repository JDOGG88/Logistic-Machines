if mods["bobplates"] and mods["bobassembly"] then
    local function createElectrolyser(version)
        local ce = table.deepcopy(data.raw["assembling-machine"]["electrolyser-" .. version])
        ce.name = "logistic-electrolyser-" .. version
        ce.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-electrolyser-" .. version }
        ce.icons = { { icon = "__bobassembly__/graphics/icons/electrolyser-" .. version .. ".png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        ce.icon_size = 32
        ce.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
        return ce
    end

    local logistic_electrolyser_2 = createElectrolyser(2)
    local logistic_electrolyser_3 = createElectrolyser(3)
    local logistic_electrolyser_4 = createElectrolyser(4)
    local logistic_electrolyser_5 = createElectrolyser(5)
    data:extend({
        logistic_electrolyser_2,
        logistic_electrolyser_3,
        logistic_electrolyser_4,
        logistic_electrolyser_5,
    })
end
