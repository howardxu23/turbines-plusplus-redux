--condensing systems for space age(allowing the use of powerful modded heat type reactors without needed 100 ice per second on space platforns)

--superheated:   750 C
--extreme heatd: 800 C

local superheat_condensing_cycle_basic={}
local superheat_condensing_cycle_advanced={}
local extremeHeat_condensing_cycle={}

local superheat_condensing_cycle_basic_technology={}
local superheat_condensing_cycle_advanced_technology={}
local extremeHeat_condensing_cycle_technology={}

if mods["space-age"] then--checks for space age is active, then enables the recipes

    --recipe for basic condensing for superheated steam, 90% efficency
    superheat_condensing_cycle=
    {
        name = 'superheated-condensation-basic',
        type = 'recipe',
        enabled = false,
        main_product = "tur_super_torque",
        category = "tur_converter_category",
        ingredients = {
            {type="fluid", name="steam", amount=800, temperature=750},
        },
        results = {
            {type="fluid", name="water", amount=72, temperature=15},
            {type="fluid", name="tur_super_torque", amount=405, temperature=750},
        },
        icon = sprite("basic-superheat-condensation.png"),
        energy_required = 1,
        always_show_made_in = true
    }
    --recipe for advanced condensing for superheated steam, 100% efficency
    superheat_condensing_cycle_advanced=
    {
        name = 'superheated-condensation-advanced',
        type = 'recipe',
        enabled = false,
        main_product = "tur_super_torque",
        category = "tur_converter_category",
        ingredients = {
            {type="fluid", name="steam", amount=800, temperature=750},
        },
        results = {
            {type="fluid", name="water", amount=80, temperature=15},
            {type="fluid", name="tur_super_torque", amount=405, temperature=750},
        },
        icon = sprite("advanced-superheat-condensation.png"),
        energy_required = 1,
        always_show_made_in = true
    }
    --recipe for extreme heat condensing cycle, uses mixed out at 100% efficency
    extremeHeat_condensing_cycle=
    {
        name = 'extremeHeat-condensation-advanced',
        type = 'recipe',
        enabled = false,
        main_product = "tur_extreme_torque",
        category = "tur_converter_category",
        ingredients = {
            {type="fluid", name="steam", amount=900, temperature=800},
        },
        results = {
            {type="fluid", name="steam", amount=800, temperature=750},
            {type="fluid", name="water", amount=10, temperature=15},
            {type="fluid", name="tur_extreme_torque", amount=405, temperature=900},
        },
        icon = sprite("extreme-heat-condensation.png"),
        energy_required = 1,
        always_show_made_in = true
    }

    --TECHNOLOGY

    --basic condensing technology
    superheat_condensing_cycle_basic_technology=
    {
        name = 'superheated-condensation-basic-tech',
        type = 'technology',
        icon = sprite('basic-superheat-condensation.png'),
        icon_size = 128,
        prerequisites = {
            'tur_extreme_torque_tech', 'metallurgic-science-pack'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'superheated-condensation-basic',
            }
        },
        unit = {
            count = 3000,
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1},
                {'production-science-pack',1}, 
                {'utility-science-pack',1},  
                {'space-science-pack',1},            
                {'metallurgic-science-pack',1}
            },
            time = 60
        }
    }
    --advanced condensing technology
    superheat_condensing_cycle_advanced_technology=
    {
        name = 'superheated-condensation-advanced-tech',
        type = 'technology',
        icon = sprite('advanced-superheat-condensation.png'),
        icon_size = 128,
        prerequisites = {
            'superheated-condensation-basic-tech', 'electromagnetic-science-pack'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'superheated-condensation-advanced',
            }
        },
        unit = {
            count = 4000,
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1},
                {'production-science-pack',1},
                {'space-science-pack',1}, 
                {'utility-science-pack',1},  
                {'metallurgic-science-pack',1},                 
                {'electromagnetic-science-pack',1}
            },
            time = 60
        }
    }
    --extreme condensing technology
    extremeHeat_condensing_cycle_technology=
    {
        name = 'extremeHeat-condensation-advanced-tech',
        type = 'technology',
        icon = sprite('extreme-heat-condensation.png'),
        icon_size = 128,
        prerequisites = {
            'superheated-condensation-advanced-tech', 'agricultural-science-pack'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'extremeHeat-condensation-advanced',
            }
        },
        unit = {
            count = 5000,
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1},
                {'production-science-pack',1},
                {'space-science-pack',1}, 
                {'utility-science-pack',1},  
                {'metallurgic-science-pack',1},                 
                --{'electromagnetic-science-pack',1},
                {'agricultural-science-pack',1}
            },
            time = 60
        }
    }

end



data:extend
({
    superheat_condensing_cycle,
    superheat_condensing_cycle_advanced,
    superheat_condensing_cycle_basic_technology,
    superheat_condensing_cycle_advanced_technology,
    extremeHeat_condensing_cycle,
    extremeHeat_condensing_cycle_technology
})
