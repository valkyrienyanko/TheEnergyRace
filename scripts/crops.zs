import crafttweaker.api.item.IItemStack;

// Ores
addCrop("iron_from_seed", <item:minecraft:iron_nugget>, <item:minecraft:wheat_seeds>);
addCrop("iron_from_material", <item:minecraft:iron_nugget>, <item:minecraft:wheat>);
addCrop("gold", <item:minecraft:gold_nugget>, <item:minecraft:carrot>);
addCrop("copper", <item:create:copper_nugget>, <item:minecraft:potato>);
addCrop("tin_from_seed", <item:techreborn:tin_nugget>, <item:minecraft:beetroot_seeds>);
addCrop("tin_from_material", <item:techreborn:tin_nugget>, <item:minecraft:beetroot>);
addCrop("redstone_from_seed", <item:minecraft:redstone>, <item:croptopia:radish_seed>);
addCrop("redstone_from_material", <item:minecraft:redstone>, <item:croptopia:radish>);
addCrop("zinc_from_seed", <item:create:zinc_nugget>, <item:croptopia:broccoli_seed>);
addCrop("zinc_from_material", <item:create:zinc_nugget>, <item:croptopia:broccoli>);
addCrop("lead_from_seed", <item:techreborn:lead_nugget>, <item:croptopia:blackbean_seed>);
addCrop("lead_from_material", <item:techreborn:lead_nugget>, <item:croptopia:blackbean>);
addCrop("diamond_from_seed", <item:techreborn:diamond_nugget>, <item:croptopia:blueberry_seed>);
addCrop("diamond_from_material", <item:techreborn:diamond_nugget>, <item:croptopia:blueberry>);
addCrop("lapiz_from_seed", <item:minecraft:lapis_lazuli>, <item:croptopia:blackberry_seed>);
addCrop("lapiz_from_material", <item:minecraft:lapis_lazuli>, <item:croptopia:blackberry>);
addCrop("emerald_from_seed", <item:techreborn:emerald_nugget>, <item:croptopia:honeydew_seed>);
addCrop("emerald_from_material", <item:techreborn:emerald_nugget>, <item:croptopia:honeydew>);
addCrop("netherite_from_seed", <item:techreborn:netherite_nugget>, <item:croptopia:vanilla_seeds>);
addCrop("netherite_from_material", <item:techreborn:netherite_nugget>, <item:croptopia:vanilla>);

// Msc
addCrop("bone_from_seed", <item:minecraft:bone>, <item:croptopia:greenonion_seed>);
addCrop("bone_from_material", <item:minecraft:bone>, <item:croptopia:greenonion>);
addCrop("string_from_seed", <item:minecraft:string>, <item:croptopia:cauliflower_seed>);
addCrop("string_from_material", <item:minecraft:string>, <item:croptopia:cauliflower>);
addCrop("rotten_flesh_from_seed", <item:minecraft:rotten_flesh>, <item:croptopia:yam_seed>);
addCrop("rotten_flesh_from_material", <item:minecraft:rotten_flesh>, <item:croptopia:yam>);
addCrop("slime_ball_from_seed", <item:minecraft:slime_ball>, <item:croptopia:greenbean_seed>);
addCrop("slime_ball_from_material", <item:minecraft:slime_ball>, <item:croptopia:greenbean>);
addCrop("sap_from_seed", <item:techreborn:sap>, <item:croptopia:ginger_seed>);
addCrop("sap_from_material", <item:techreborn:sap>, <item:croptopia:ginger>);
addCrop("ink_sac_from_seed", <item:minecraft:ink_sac>, <item:croptopia:pepper_seed>);
addCrop("ink_sac_from_material", <item:minecraft:ink_sac>, <item:croptopia:pepper>);
addCrop("ender_pearl_from_seed", <item:minecraft:ender_pearl>, <item:croptopia:eggplant_seed>);
addCrop("ender_pearl_from_material", <item:minecraft:ender_pearl>, <item:croptopia:eggplant>);
addCrop("gunpowder_from_seed", <item:minecraft:gunpowder>, <item:croptopia:coffee_seed>);
addCrop("gunpowder_from_material", <item:minecraft:gunpowder>, <item:croptopia:coffee>);
addCrop("amethyst_shard_from_seed", <item:minecraft:amethyst_shard>, <item:croptopia:elderberry_seed>);
addCrop("amethyst_shard_from_material", <item:minecraft:amethyst_shard>, <item:croptopia:elderberry>);
addCrop("quartz_from_seed", <item:minecraft:quartz>, <item:croptopia:olive_seed>);
addCrop("quartz_from_material", <item:minecraft:quartz>, <item:croptopia:olive>);
addCrop("coal_from_seed", <item:minecraft:coal>, <item:croptopia:mustard_seed>);
addCrop("coal_from_material", <item:minecraft:coal>, <item:croptopia:mustard>);
addCrop("blaze_rod_from_seed", <item:minecraft:blaze_rod>, <item:croptopia:corn_seed>);
addCrop("blaze_rod_from_material", <item:minecraft:blaze_rod>, <item:croptopia:corn>);
addCrop("sugar_cane_from_seed", <item:minecraft:sugar_cane>, <item:croptopia:hops_seed>);
addCrop("sugar_cane_from_material", <item:minecraft:sugar_cane>, <item:croptopia:hops>);
addCrop("magma_cream_from_seed", <item:minecraft:magma_cream>, <item:croptopia:currant_seed>);
addCrop("magma_cream_from_material", <item:minecraft:magma_cream>, <item:croptopia:currant>);
addCrop("glowstone_dust_from_seed", <item:minecraft:glowstone_dust>, <item:croptopia:cantaloupe_seed>);
addCrop("glowstone_dust_from_material", <item:minecraft:glowstone_dust>, <item:croptopia:cantaloupe>);
addCrop("clay_ball_from_seed", <item:minecraft:clay_ball>, <item:croptopia:turmeric_seed>);
addCrop("clay_ball_from_material", <item:minecraft:clay_ball>, <item:croptopia:turmeric>);
addCrop("feather_from_seed", <item:minecraft:feather>, <item:croptopia:rice_seed>);
addCrop("feather_from_material", <item:minecraft:feather>, <item:croptopia:rice>);

function addCrop(recipeName as string, output as IItemStack, input as IItemStack) as void 
{
	<recipetype:create:milling>.addRecipe("crops_duplicate_" + recipeName, [input * 2 % 100], input, 200);

	<recipetype:create:pressing>.addRecipe("crops_" + recipeName, [output % 100], input, 200);
}

addFullHouse("gunpowder", <item:croptopia:coffee_seed>, <item:minecraft:gunpowder>);