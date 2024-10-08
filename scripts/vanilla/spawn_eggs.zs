import crafttweaker.api.ingredient.IIngredient;

// Passive
// Missing Mobs: Camel, Dolphin, Donkey, Fox, Frog, LLama, Mule, Ocelot, Panda, Parrot, Sniffer, 
// Tadpole, Trader Llama, Wandering Trader
addSpawnEgg44("chicken", <item:minecraft:chicken>, <item:minecraft:feather>);
addSpawnEgg44("cow", <item:minecraft:leather>, <item:minecraft:beef>);
addSpawnEgg44("sheep", <tag:items:minecraft:wool>, <item:minecraft:mutton>);
addSpawnEgg44("mooshroom", <item:minecraft:brown_mushroom>, <item:minecraft:red_mushroom>);
addSpawnEgg8("pig", <item:minecraft:porkchop>);
addSpawnEgg8("horse", <item:minecraft:leather>);
addSpawnEgg8("bee", <item:minecraft:honeycomb>);
addSpawnEgg8("cod", <item:minecraft:cod>);
addSpawnEgg8("rabbit", <item:minecraft:rabbit>);
addSpawnEgg44("pufferfish", <item:minecraft:pufferfish>, <item:minecraft:air>);
addSpawnEgg8("salmon", <item:minecraft:salmon>);
addSpawnEgg8("villager", <item:minecraft:emerald>);
addSpawnEgg8("iron_golem", <item:minecraft:iron_ingot>);
addSpawnEgg8("polar_bear", <item:minecraft:ice>);
addSpawnEgg8("snow_golem", <item:minecraft:snowball>);
addSpawnEgg8("squid", <item:minecraft:ink_sac>);
addSpawnEgg8("tropical_fish", <item:minecraft:tropical_fish>);
addSpawnEgg8("turtle", <item:minecraft:scute>);
addSpawnEgg8("glow_squid", <item:minecraft:glow_ink_sac>);
addSpawnEgg44("allay", <item:minecraft:chest>, <item:minecraft:feather>);
addSpawnEgg44("zombie_horse", <item:minecraft:leather>, <item:minecraft:rotten_flesh>);
addSpawnEgg44("skeleton_horse", <item:minecraft:leather>, <item:minecraft:bone>);
addSpawnEgg44("axolotl", <item:minecraft:water_bucket>, <tag:items:minecraft:wool>);
addSpawnEgg44("bat", <item:minecraft:stone>, <item:minecraft:feather>);
addSpawnEgg44("goat", <item:minecraft:goat_horn>, <item:minecraft:air>);
addSpawnEgg44("cat", <item:minecraft:cod>, <item:minecraft:tropical_fish>);
addSpawnEgg44("wolf", <item:minecraft:bone>, <item:minecraft:porkchop>);

// Hostile
// Missing Mobs: Ender Dragon, Endermite, Hoglin, Phantom, Pillager, Ravager, Shulker, 
// Strider, Vindicator, Warden, Wither, Zoglin
addSpawnEgg44("blaze", <item:minecraft:blaze_rod>, <item:minecraft:blaze_powder>);
addSpawnEgg44("zombie_villager", <item:minecraft:emerald>, <item:minecraft:rotten_flesh>);
addSpawnEgg44("zombified_piglin", <item:minecraft:gold_ingot>, <item:minecraft:rotten_flesh>);
addSpawnEgg44("drowned", <item:minecraft:water_bucket>, <item:minecraft:rotten_flesh>);
addSpawnEgg8("creeper", <item:minecraft:gunpowder>);
addSpawnEgg8("piglin", <item:minecraft:gold_nugget>);
addSpawnEgg8("piglin_brute", <item:minecraft:gold_ingot>);
addSpawnEgg8("cave_spider", <item:minecraft:fermented_spider_eye>);
addSpawnEgg8("enderman", <item:minecraft:ender_pearl>);
addSpawnEgg8("spider", <item:minecraft:spider_eye>);
addSpawnEgg8("skeleton", <item:minecraft:bone>);
addSpawnEgg8("slime", <item:minecraft:slime_ball>);
addSpawnEgg8("silverfish", <item:minecraft:cracked_stone_bricks>);
addSpawnEgg8("zombie", <item:minecraft:rotten_flesh>);
addSpawnEgg8("magma_cube", <item:minecraft:magma_cream>);
addSpawnEgg44("guardian", <item:minecraft:prismarine_shard>, <item:minecraft:air>);
addSpawnEgg8("ghast", <item:minecraft:ghast_tear>);
addSpawnEgg44("elder_guardian", <item:minecraft:gold_block>, <item:minecraft:prismarine_shard>);
addSpawnEgg44("husk", <item:minecraft:sand>, <item:minecraft:rotten_flesh>);
addSpawnEgg44("witch", <item:minecraft:glowstone_dust>, <item:minecraft:redstone>);
addSpawnEgg44("evoker", <item:minecraft:iron_sword>, <item:minecraft:redstone>);
addSpawnEgg44("vex", <item:minecraft:iron_sword>, <item:minecraft:feather>);
addSpawnEgg44("stray", <item:minecraft:bone>, <item:minecraft:ice>);

function addSpawnEgg44(entityName as string, material1 as IIngredient, material2 as IIngredient) as void 
{
	var E = <item:kubejs:empty_spawn_egg>;
	var A = material1;
	var B = material2;

	craftingTable.addShaped(entityName + "_egg", <item:minecraft:${entityName}_spawn_egg>, [
		[B, A, B],
		[A, E, A],
		[B, A, B]
	]);
}

function addSpawnEgg8(entityName as string, material as IIngredient) as void 
{
	var E = <item:kubejs:empty_spawn_egg>;
	var M = material;

	craftingTable.addShaped(entityName + "_egg", <item:minecraft:${entityName}_spawn_egg>, [
		[M, M, M],
		[M, E, M],
		[M, M, M]
	]);
}