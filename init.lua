print("Loading Cheese")

cheese = minetest.registered_aliases[cheese] or cheese

minetest.register_craftitem("cheese:cheese", {
    description = "Cheese.",
    inventory_image = "cheese.png",
    on_use = minetest.item_eat(10),
})

minetest.register_node("cheese:cheeseblock", {
    description = "A smelly but blocky way to store Cheese.",
    tiles = {"cheeseblock.png"},
    groups = {snappy=1},
})

minetest.register_craft({
    type = "shapeless",
    output = "cheese:cheese",
    recipe = {
      "default:gold_lump",
      "bucket:bucket_water",
    },
    replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
})

minetest.register_craft({
    type = "shapeless",
    output = "cheese:cheeseblock",
    recipe = {
        "cheese:cheese","cheese:cheese","cheese:cheese",
        "cheese:cheese","cheese:cheese","cheese:cheese",
        "cheese:cheese","cheese:cheese","cheese:cheese",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "cheese:cheese 9",
    recipe = {
        "cheese:cheeseblock",
    },
})

minetest.register_alias("cheese", "cheese:cheese")
minetest.register_alias("cheeseblock", "cheese:cheeseblock")