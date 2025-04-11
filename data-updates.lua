
if mods["space-age"] then--checks for space age is active, then adds heating system
    --adds heating system
    data.raw["generator"]["tur_super_turbine_entity"].heating_energy = "50kW"
    data.raw["generator"]["tur_extreme_turbine_entity"].heating_energy = "50kW"
    data.raw["assembling-machine"]["tur_converter_entity"].heating_energy = "50kW"

    --adds the recipes for casting to existing technology
    table.insert(data.raw["technology"]["tur_super_torque_tech"].effects,--super heat exchanger
    {type = 'unlock-recipe',recipe = 'super_exchanger_casting',})

    table.insert(data.raw["technology"]["tur_super_torque_tech"].effects,--torque turbine
    {type = 'unlock-recipe',recipe = 'tur_super_torque_casting',})

    table.insert(data.raw["technology"]["tur_extreme_torque_tech"].effects,--exrteme heat exchanger
    {type = 'unlock-recipe',recipe = 'extreme_exchanger_casting',})

    table.insert(data.raw["technology"]["tur_extreme_torque_tech"].effects,--extreme torque turbine
    {type = 'unlock-recipe',recipe = 'tur_extreme_torque_casting',})

    table.insert(data.raw["technology"]["tur_4way_turbine_tech"].effects,--lapace turbine
    {type = 'unlock-recipe',recipe = 'lapace_turbine_casting',})

    table.insert(data.raw["technology"]["tur_4way_turbine_tech"].effects,--carnot turbine
    {type = 'unlock-recipe',recipe = 'carnot_turbine_casting',})
end
