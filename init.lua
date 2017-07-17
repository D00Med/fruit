
minetest.register_node("fruit:leaves_with_pear", {
	description = "Leaves with Pear",
	drawtype = "allfaces",
	tiles = {
		"default_leaves.png^fruit_pear_leaves.png",
	},
	paramtype = "light",
	groups = {snappy=1, oddly_breakeable_by_hand=1, not_in_creative_inventory=1},
	drop = "default:leaves",
	on_destruct = function(pos)
		minetest.add_item(pos, "fruit:pear")
	end,
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("fruit:leaves_with_plum", {
	description = "Leaves with Plum",
	drawtype = "allfaces",
	tiles = {
		"default_leaves.png^fruit_plum_leaves.png",
	},
	paramtype = "light",
	groups = {snappy=1, oddly_breakeable_by_hand=1, not_in_creative_inventory=1},
	drop = "default:leaves",
	on_destruct = function(pos)
		minetest.add_item(pos, "fruit:plum")
	end,
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("fruit:leaves_with_peach", {
	description = "Leaves with Peach",
	drawtype = "allfaces",
	tiles = {
		"default_leaves.png^fruit_peach_leaves.png",
	},
	paramtype = "light",
	groups = {snappy=1, oddly_breakeable_by_hand=1, not_in_creative_inventory=1},
	drop = "default:leaves",
	on_destruct = function(pos)
		minetest.add_item(pos, "fruit:peach")
	end,
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("fruit:leaves_with_orange", {
	description = "Leaves with Orange",
	drawtype = "allfaces",
	tiles = {
		"default_acacia_leaves.png^fruit_orange_leaves.png",
	},
	paramtype = "light",
	groups = {snappy=1, oddly_breakeable_by_hand=1, not_in_creative_inventory=1},
	drop = "default:acacia_leaves",
	on_destruct = function(pos)
		minetest.add_item(pos, "fruit:orange")
	end,
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_craftitem("fruit:pear", {
	description = "Pear",
	inventory_image = "fruit_pear.png",
	on_use = minetest.item_eat(2)
})

minetest.register_craftitem("fruit:plum", {
	description = "Plum",
	inventory_image = "fruit_plum.png",
	on_use = minetest.item_eat(1)
})

minetest.register_craftitem("fruit:peach", {
	description = "Peach",
	inventory_image = "fruit_peach.png",
	on_use = minetest.item_eat(2)
})

minetest.register_craftitem("fruit:orange", {
	description = "Orange",
	inventory_image = "fruit_orange.png",
	on_use = minetest.item_eat(2)
})

fruit = {}

function fruit.register_ores()
	minetest.register_ore({
		ore_type       = "blob",
		ore            = "fruit:leaves_with_orange",
		wherein        = "default:acacia_leaves",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 6,
		clust_size     = 5,
		y_min          = 0,
		y_max          = 31000,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "fruit:leaves_with_peach",
		wherein        = "default:leaves",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 6,
		clust_size     = 5,
		y_min          = 0,
		y_max          = 31000,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "fruit:leaves_with_pear",
		wherein        = "default:leaves",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 6,
		clust_size     = 5,
		y_min          = 0,
		y_max          = 31000,
	})

	minetest.register_ore({
		ore_type       = "blob",
		ore            = "fruit:leaves_with_plum",
		wherein        = "default:leaves",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 6,
		clust_size     = 5,
		y_min          = 0,
		y_max          = 31000,
	})
end

fruit.register_ores()