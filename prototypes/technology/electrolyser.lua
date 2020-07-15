if mods["bobassembly"] and mods["bobplates"] and settings.startup["bobmods-assembly-electrolysers"].value == true then
    table.insert(data.raw.technology["logistic-machines-1"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-2" })
    table.insert(data.raw.technology["logistic-machines-2"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-3" })
    table.insert(data.raw.technology["logistic-machines-3"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-4" })
    table.insert(data.raw.technology["logistic-machines-4"].effects, { type = "unlock-recipe", recipe = "logistic-electrolyser-5" })
end
