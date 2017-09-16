-- made by Yam (ForgiveAndromedalolol). WTFPL LICENSE. 
minetest.register_node("blue:lava_source", {
	description = "Blue lava",
	drawtype = "liquid",
	tiles = {
		{
			name = "blue_lava.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "blue_lava.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "blue:lava_flowing",
	liquid_alternative_source = "blue:lava_source",
	liquid_viscosity = 7,
--	damage_per_second = 4 * 2,
    post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {lava = 3, liquid = 2, igniter = 1},

})
minetest.register_node("blue:lava_flowing", {
	description = "Flowing Blue lava",
	drawtype = "flowingliquid",
	tiles = {"blue_lava.png"},
	special_tiles = {
		{
			name = "blue_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "blue_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "blue:lava_flowing",
	liquid_alternative_source = "blue:lava_source",
	liquid_viscosity = 7,
--	damage_per_second = 4 * 2,
    post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {lava = 3, liquid = 2, igniter = 1,
		not_in_creative_inventory = 1},
})