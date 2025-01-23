if mods["space-age"] then--checks for space age is active, then adds heating system
    --adds heating
    data.raw["generator"]["tur_super_turbine_entity"].heating_energy = "50kW"
    data.raw["generator"]["tur_extreme_turbine_entity"].heating_energy = "50kW"
    data.raw["assembling-machine"]["tur_converter_entity"].heating_energy = "50kW"
end