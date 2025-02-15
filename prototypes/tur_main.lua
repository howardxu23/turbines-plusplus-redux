function sprite(name)
    return '__turbines-plusplus-reloaded-dev__/resources/'..name--REMEBER TO REMOVE DEV FOR RELASE
end

--turbines
local tur_super_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
    tur_super_turbine_entity.name = "tur_super_turbine_entity"
    tur_super_turbine_entity.icon = sprite('tur_super_turbine_entity_icon.png')
    tur_super_turbine_entity.icon_size = 64
    tur_super_turbine_entity.fluid_usage_per_tick = 1.6667
    tur_super_turbine_entity.burns_fluid = false
    tur_super_turbine_entity.scale_fluid_usage = false
    tur_super_turbine_entity.maximum_temperature = 750
    tur_super_turbine_entity.minable.result = "tur_super_turbine_item"
    tur_super_turbine_entity.energy_source.usage_priority = "secondary-output"
    tur_super_turbine_entity.fluid_box.filter = "tur_super_torque"
    tur_super_turbine_entity.max_power_output = "30MW"
    tur_super_turbine_entity.next_upgrade = nil
    --tur_super_turbine_entity.heating_energy="50kW"
    --tur_super_turbine_entity.weight=50*kg
    --
    tur_super_turbine_entity.horizontal_animation = {
        --filename = sprite('tur_super_turbine_entity_animation_horizontal.png'),
        filename = sprite('tur_super_turbine_entity_animation_horizontal.png'),
        width = 512,
        height = 256,
        line_length = 3,
        scale = 0.34,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0.1, 0},
        animation_speed = 0.5
    }
    tur_super_turbine_entity.vertical_animation = {
        filename = sprite('tur_super_turbine_entity_animation_vertikal.png'),
        width = 256,
        height = 512,
        line_length = 3,
        scale = 0.36,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0, -0.2},
        animation_speed = 0.5
    }
    tur_super_turbine_entity.smoke = nil

local tur_extreme_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
    tur_extreme_turbine_entity.name = "tur_extreme_turbine_entity"
    tur_extreme_turbine_entity.icon = sprite('tur_extreme_turbine_entity_icon.png')
    tur_extreme_turbine_entity.icon_size = 64
    tur_extreme_turbine_entity.fluid_usage_per_tick = 1.6667
    tur_extreme_turbine_entity.burns_fluid = false
    tur_extreme_turbine_entity.scale_fluid_usage = false
    tur_extreme_turbine_entity.maximum_temperature = 900
    tur_extreme_turbine_entity.minable.result = "tur_extreme_turbine_item"
    tur_extreme_turbine_entity.energy_source.usage_priority = "secondary-output"
    tur_extreme_turbine_entity.fluid_box.filter = "tur_extreme_torque"
    tur_extreme_turbine_entity.max_power_output = "40MW"
    tur_extreme_turbine_entity.next_upgrade = nil
    --tur_extreme_turbine_entity.heating_energy="50kW"
    --tur_extreme_turbine_entity.weight=50*kg
    tur_extreme_turbine_entity.horizontal_animation = {
        filename = sprite('tur_extreme_turbine_entity_animation_horizontal.png'),
        width = 512,
        height = 256,
        line_length = 3,
        scale = 0.34,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0.1, 0},
        animation_speed = 0.5
    }
    tur_extreme_turbine_entity.vertical_animation = {
        filename = sprite('tur_extreme_turbine_entity_animation_vertikal.png'),
        width = 256,
        height = 512,
        line_length = 3,
        scale = 0.36,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0, -0.2},
        animation_speed = 0.5
    }
    tur_extreme_turbine_entity.smoke = nil
--Laplace 4-way steam turbine (80mw base)
local tur_4way_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
tur_4way_turbine_entity.name = "tur_4way_turbine_entity"
tur_4way_turbine_entity.icon = sprite('tur_4way_turbine_entity_icon.png')
tur_4way_turbine_entity.icon_size = 64
tur_4way_turbine_entity.fluid_usage_per_tick = 9.07
tur_4way_turbine_entity.burns_fluid = false
tur_4way_turbine_entity.scale_fluid_usage = false
tur_4way_turbine_entity.maximum_temperature = 750
tur_4way_turbine_entity.minable.result = "tur_4way_turbine_item"
tur_4way_turbine_entity.energy_source.usage_priority = "primary-output"
tur_4way_turbine_entity.fluid_box.filter = "steam"
tur_4way_turbine_entity.effectivity = 1.25
--tur_4way_turbine_entity.max_power_output = "10MW"
tur_4way_turbine_entity.next_upgrade = nil
tur_4way_turbine_entity.collision_box = {{-2.4,-2.4},{2.4,2.4}}
tur_4way_turbine_entity.selection_box = {{-2.5,-2.5},{2.5,2.5}}
--tur_4way_turbine_entity.weight=50*kg
tur_4way_turbine_entity.horizontal_animation = {
    filename = sprite('tur_4way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_4way_turbine_entity.vertical_animation = {
    filename = sprite('tur_4way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_4way_turbine_entity.fluid_box = {
	volume = 2000,
  base_area = 1,
  height = 2,
  base_level = -1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    {flow_direction = "input-output", direction = defines.direction.north, position = {0, -2.0}},
    {flow_direction = "input-output", direction = defines.direction.south, position = {0, 2.0}},
    {flow_direction = "input-output", direction = defines.direction.east, position = {2.0, 0}},
    {flow_direction = "input-output", direction = defines.direction.west, position = {-2.0, 0}}
  },
  production_type = "input-output",
  filter = "steam"
}
--Carnot 4-way steam turbine (120mw base)
local tur_8way_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
tur_8way_turbine_entity.name = "tur_8way_turbine_entity"
tur_8way_turbine_entity.icon = sprite('tur_8way_turbine_entity_icon.png')
tur_8way_turbine_entity.icon_size = 64
tur_8way_turbine_entity.fluid_usage_per_tick = 12.7334
tur_8way_turbine_entity.burns_fluid = false
tur_8way_turbine_entity.scale_fluid_usage = false
tur_8way_turbine_entity.maximum_temperature = 800
tur_8way_turbine_entity.minable.result = "tur_8way_turbine_item"
tur_8way_turbine_entity.energy_source.usage_priority = "primary-output"
tur_8way_turbine_entity.fluid_box.filter = "steam"
tur_8way_turbine_entity.effectivity = 2
--tur_8way_turbine_entity.max_power_output = "10MW"
tur_8way_turbine_entity.next_upgrade = nil
tur_8way_turbine_entity.collision_box = {{-2.4,-2.4},{2.4,2.4}}
tur_8way_turbine_entity.selection_box = {{-2.5,-2.5},{2.5,2.5}}
--tur_8way_turbine_entity.weight=50*kg
tur_8way_turbine_entity.horizontal_animation = {
    filename = sprite('tur_8way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_8way_turbine_entity.vertical_animation = {
    filename = sprite('tur_8way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_8way_turbine_entity.fluid_box = {
	volume = 2000,
    base_area = 1,
    height = 2,
    base_level = -1,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
    {flow_direction = "input-output", direction = defines.direction.north, position = {0, -2.0}},
    {flow_direction = "input-output", direction = defines.direction.south, position = {0, 2.0}},
    {flow_direction = "input-output", direction = defines.direction.east, position = {2.0, 0}},
    {flow_direction = "input-output", direction = defines.direction.west, position = {-2.0, 0}}
    },
    production_type = "input-output",
    filter = "steam"
  }


--exchanger
local tur_exchanger_entity = util.table.deepcopy(data.raw.boiler["heat-exchanger"])
    tur_exchanger_entity.name = "tur_exchanger_entity"
    tur_exchanger_entity.target_temperature = 800
    tur_exchanger_entity.minable.result = "tur_exchanger_item"
    tur_exchanger_entity.energy_consumption = "60MW"
    tur_exchanger_entity.energy_source.min_working_temperature = 800
    --tur_exchanger_entity.weight=50*kg

local tur_exchanger_entity_2 = util.table.deepcopy(data.raw.boiler["heat-exchanger"])
    tur_exchanger_entity_2.name = "tur_exchanger_entity_2"
    tur_exchanger_entity_2.target_temperature = 750
    tur_exchanger_entity_2.minable.result = "tur_exchanger_item_2"
    tur_exchanger_entity_2.energy_consumption = "40MW"
    tur_exchanger_entity_2.energy_source.min_working_temperature = 750
    --tur_exchanger_entity_2.weight=50*kg

    local CrafterReceipe

    local foundary_torque
    local foundary_extreme_torque
    local foundary_Lapace
    local foundary_carnort
    local foundary_superHeater
    local foundary_extremeHeater
    
    if mods["space-age"] then --if space age is active then add exchangers, turbines, to foundry
        CrafterReceipe="pressing"
        --foundry recipies
        foundary_torque={
            name = 'tur_super_torque_casting',
            type = 'recipe',
            enabled = true,
            category="metallurgy",
            ingredients = {
                {type="fluid", name="molten-copper", amount=1500},
                {type="fluid", name="molten-iron", amount=1500},
                {type="item", name="steam-turbine", amount=4},
            },
            results = {
                {type="item", name="tur_super_turbine_item", amount=1},
            },
            energy_required = 30,
        } 
        foundary_extreme_torque={
            name = 'tur_extreme_torque_casting',
            type = 'recipe',
            enabled = false,
            category="metallurgy",
            ingredients = {
                {type="fluid", name="molten-copper", amount=1500},
                {type="fluid", name="molten-iron", amount=1500},
                {type="item", name="tur_super_turbine_item", amount=4},
            },
            results = {
                {type="item", name="tur_extreme_turbine_item", amount=1},
            },
            energy_required = 30,
        }
        foundary_Lapace={
            name = 'lapace_turbine_casting',
            type = 'recipe',
            enabled = false,
            category="metallurgy",
            ingredients = {
                {type="item", name="copper-cable", amount=300},
                {type="fluid", name="molten-iron", amount=1500},
                {type="item", name="steam-turbine", amount=4},
            },
            results = {
                {type="item", name="tur_4way_turbine_item", amount=1},
            },
            energy_required = 20,
        }
        foundary_carnort={
            name = 'carnot_turbine_casting',
            type = 'recipe',
            enabled = false,
            category="metallurgy",
            ingredients = {
                {type="item", name="copper-cable", amount=300},
                {type="fluid", name="molten-iron", amount=1500},
                {type="item", name="tur_4way_turbine_item", amount=4},
            },
            results = {
                {type="item", name="tur_8way_turbine_item", amount=1},
            },
            energy_required = 20,
        }
        foundary_superHeater={
            name = 'extreme_exchanger_casting',
            type = 'recipe',
            enabled = false,
            category="metallurgy",
            ingredients = {
                {type="fluid", name="molten-copper", amount=2200},
                {type="fluid", name="molten-iron", amount=1000},
                {type="item", name="tur_exchanger_item_2", amount=1},
                {type="item", name="heat-exchanger", amount=2},
            },
            results = {
                {type="item", name="tur_exchanger_item", amount=1},
            },
            energy_required = 10,
        }
        foundary_extremeHeater={
            name = 'super_exchanger_casting',
            type = 'recipe',
            enabled = false,
            category="metallurgy",
            ingredients = {
                {type="fluid", name="molten-copper", amount=1000},
                {type="fluid", name="molten-iron", amount=400},
                {type="item", name="heat-exchanger", amount=4},
            },
            results = {
                {type="item", name="tur_exchanger_item_2", amount=1},
            },
            energy_required = 10,
        }
    end
data:extend({
    tur_super_turbine_entity,
    tur_extreme_turbine_entity,
    tur_exchanger_entity,
    tur_exchanger_entity_2,
    tur_4way_turbine_entity,
    tur_8way_turbine_entity,
    --subgroups
    {
        name = 'tur_converter_category',
        type = 'recipe-category',
    },
    --converter
    {
        name = 'tur_converter_item',
        type = 'item',
        icon = sprite('tur_converter_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_converter_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-a-c',
        weight=200*kg
    },
    
    {
        name = 'tur_converter_entity',
        type = 'assembling-machine',
        icon = sprite('tur_converter_entity_icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral"},
        max_health = 300,
        corpse = 'big-remnants',
		module_slots = 3,
		allowed_effects = {"speed"},
        collision_box = {{-2.4,-2.4},{2.4,2.4}},
        selection_box = {{-2.5,-2.5},{2.5,2.5}},
        map_color = {r=0, g=0, b=1, a=1},
        minable = {
            mining_time = 1,
            result = 'tur_converter_item',
        },
        crafting_categories = {'tur_converter_category'},
        crafting_speed = 1,
        energy_source = {
            type = 'void',
        },
        energy_usage = '1W',
		--heating_energy = "50kW",
        --fluid boxes
        fluid_boxes = {
            {
              filter = 'steam',
			  volume = 2000,
              base_area = 1,
              height = 2,
              base_level = 1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {flow_direction = "output", direction = defines.direction.north, position = {0, -2.0}},
              },
              production_type = "output"
            },
            { 
              filter = 'steam',
			  volume = 2000,
              base_area = 1,
              height = 2,
              base_level = 1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {flow_direction = "output", direction = defines.direction.south, position = {0, 2.0}}
              },
              production_type = "output"
            },
            { 
              filter = 'steam',
			  volume = 2000,
              base_area = 1,
              height = 2,
              base_level = -1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {flow_direction = "input", direction = defines.direction.east, position = {2.0, 0}},
              },
              production_type = "input"
            },
            {
              base_area = 1,
			  volume = 2000,
              height = 2,
              base_level = 1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {flow_direction = "output", direction = defines.direction.west, position = {-2.0, 0}},
              },
              production_type = "output"
            },
        },
		
        --animation
		graphics_set =
		{ 
            always_draw_idle_animation = true,
            idle_animation =
			{
				layers =
				{
					{
						filename = sprite("tur_converter_entity_animation.png"),
						priority = "high",
						scale = 1,
						
						line_length = 6,
						lines_per_file = 6,
						frame_count = 4,
						
						width = 224,
						height = 224,
						--shift = util.by_pixel(-0.25, -26.5)
					},
				},
			},
            working_visualisations =
			{
                fadeout = true,

                animation =
                {
                    layers =
                    {
                        {
                            filename = sprite("tur_converter_entity_animation.png"),
                            priority = "high",
                            scale = 1,
                            blend_mode = "additive",
                            line_length = 6,
                            lines_per_file = 6,

                            width = 224,
                            height = 224,
                            frame_count = 4,
                            draw_as_glow = false,
                            --shift = util.by_pixel(0, -27.25)
                        },
                    },
                },
            },

        },
		
	},

    --turbines
    {
        name = 'tur_super_turbine_item',
        type = 'item',
        icon = sprite('tur_super_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_super_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-b',
        weight=50*kg
    },
    {
        name = 'tur_extreme_turbine_item',
        type = 'item',
        icon = sprite('tur_extreme_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_extreme_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-c',
        weight=50*kg
    },
    {
        name = 'tur_4way_turbine_item',
        type = 'item',
        icon = sprite('tur_4way_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_4way_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-d',
        weight=100*kg
    },
    {
        name = 'tur_8way_turbine_item',
        type = 'item',
        icon = sprite('tur_8way_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_8way_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-e',
        weight=100*kg
    },
    --exchanger
    {
        name = 'tur_exchanger_item',
        type = 'item',
        icon = sprite('tur_exchanger_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_exchanger_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-a-b',
        weight=50*kg
    },
    {
        name = 'tur_exchanger_item_2',
        type = 'item',
        icon = sprite('tur_exchanger_entity_icon_2.png'),
        icon_size = 64,
        place_result = 'tur_exchanger_entity_2',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-a-a',
        weight=50*kg
    },
    --torgue
    {
        name = 'tur_extreme_torque',
        type = 'fluid',
        icon = sprite('tur_extreme_torque.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0, g=10, b=0 }, 
		flow_color = { r=0, g=10, b=0 }, 
		pressure_to_speed_ratio = 0.400, 
        flow_to_energy_ratio = 0,
        subgroup = 'energy',
        order = 'z-b',
	auto_barrel = false,
    },
    {
        name = 'tur_super_torque',
        type = 'fluid',
        icon = sprite('tur_super_torque.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0, g=0, b=10 }, 
		flow_color = { r=0, g=0, b=10 }, 
		pressure_to_speed_ratio = 0.400, 
        flow_to_energy_ratio = 0,
        subgroup = 'energy',
        order = 'z-a',
	auto_barrel = false,
    },

    --recipes
    foundary_torque,
    foundary_extreme_torque,
    foundary_Lapace,
    foundary_carnort,
    foundary_superHeater,
    foundary_extremeHeater,
    {
        name = 'tur_converter_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=200},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="heat-exchanger", amount=3},
        },
        results = {
            {type="item", name="tur_converter_item", amount=1},
        },
        energy_required = 10,
    },
    {
        name = 'tur_converter_1_recipe',
        type = 'recipe',
        enabled = false,
        main_product = "tur_extreme_torque",
        category = "tur_converter_category",
        ingredients = {
            {type="fluid", name="steam", amount=900, temperature=800},
        },
        results = {
            {type="fluid", name="steam", amount=805, temperature=750},
            {type="fluid", name="tur_extreme_torque", amount=405, temperature=900},
        },
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'tur_converter_2_recipe',
        type = 'recipe',
        enabled = false,
        main_product = "tur_super_torque",
        category = "tur_converter_category",
        ingredients = {
            {type="fluid", name="steam", amount=800, temperature=750},
        },
        results = {
            {type="fluid", name="steam", amount=241, temperature=500},
            {type="fluid", name="tur_super_torque", amount=405, temperature=750},
        },
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'tur_super_turbine_recipe',
        type = 'recipe',
        enabled = false,
        --category=CrafterReceipe,
        ingredients = {
            {type="item", name="copper-plate", amount=150},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="steam-turbine", amount=4},
        },
        results = {
            {type="item", name="tur_super_turbine_item", amount=1},
        },
        energy_required = 30,
    },
    {
        name = 'tur_extreme_turbine_recipe',
        type = 'recipe',
        enabled = false,
        --category=CrafterReceipe,
        ingredients = {
            {type="item", name="copper-plate", amount=150},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="tur_super_turbine_item", amount=4},
        },
        results = {
            {type="item", name="tur_extreme_turbine_item", amount=1},
        },
        energy_required = 30,
    },
    {
        name = 'tur_4way_turbine_recipe',
        type = 'recipe',
        enabled = false,
        --category=CrafterReceipe,
        ingredients = {
            {type="item", name="copper-cable", amount=300},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="steam-turbine", amount=4},
        },
        results = {
            {type="item", name="tur_4way_turbine_item", amount=1},
        },
        energy_required = 20,
    },
    {
        name = 'tur_8way_turbine_recipe',
        type = 'recipe',
        enabled = false,
        --category=CrafterReceipe,
        ingredients = {
            {type="item", name="copper-cable", amount=300},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="tur_4way_turbine_item", amount=4},
        },
        results = {
            {type="item", name="tur_8way_turbine_item", amount=1},
        },
        energy_required = 20,
    },
    {
        name = 'tur_exchanger_recipe',
        type = 'recipe',
        enabled = false,
        --category=CrafterReceipe,
        ingredients = {
            {type="item", name="copper-plate", amount=220},
            {type="item", name="pipe", amount=100},
            {type="item", name="tur_exchanger_item_2", amount=1},
			{type="item", name="heat-exchanger", amount=2},
        },
        results = {
            {type="item", name="tur_exchanger_item", amount=1},
        },
        energy_required = 10,
    },
    {
        name = 'tur_exchanger_recipe_2',
        type = 'recipe',
        enabled = false,
        --category=CrafterReceipe,
        ingredients = {
            {type="item", name="copper-plate", amount=100},
            {type="item", name="pipe", amount=40},
            {type="item", name="heat-exchanger", amount=4},
        },
        results = {
            {type="item", name="tur_exchanger_item_2", amount=1},
        },
        energy_required = 10,
    },
    --techs
    {
        name = 'tur_super_torque_tech',
        type = 'technology',
        icon = sprite('tur_super_torque_tech.png'),
        icon_size = 128,
        prerequisites = {
            'nuclear-power'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'tur_converter_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_converter_2_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_exchanger_recipe_2',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_super_turbine_recipe',
            }
            
        },
        unit = {
            count = 1000,
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1}
            },
            time = 60,
        },
    },
    {
        name = 'tur_extreme_torque_tech',
        type = 'technology',
        icon = sprite('tur_extreme_torque_tech.png'),
        icon_size = 128,
        prerequisites = {
            'tur_super_torque_tech',
			'production-science-pack'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'tur_converter_1_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_extreme_turbine_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_exchanger_recipe',
            }
        },
        unit = {
            count = 2000,
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1},
				{'production-science-pack',1}
            },
            time = 60,
        },
    },
    {
        name = 'tur_4way_turbine_tech',
        type = 'technology',
        icon = sprite('tur_4way_turbine_tech.png'),
        icon_size = 128,
        prerequisites = {
            'nuclear-power','utility-science-pack'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'tur_4way_turbine_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_8way_turbine_recipe',
            }
        },
        unit = {
            count = 2000,
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1},
                {'utility-science-pack',1},
                {'production-science-pack',1}
            },
            time = 60,
        },
    },
})
