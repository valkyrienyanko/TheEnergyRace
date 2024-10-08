import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

addHorseArmor("iron", "iron_ingot");
addHorseArmor("golden", "gold_ingot");
addHorseArmor("diamond", "diamond");

addChainmailArmor();
addCobweb();
addSaddle();
addIce();
addEmptyEgg();
addSponge();
addFullHouse("brown_mushroom_block", <item:minecraft:brown_mushroom_block>, <item:minecraft:brown_mushroom>);
addFullHouse("red_mushroom_block", <item:minecraft:red_mushroom_block>, <item:minecraft:red_mushroom>);
addCheckeredPattern("mushroom_stem", <item:minecraft:brown_mushroom>, <item:minecraft:red_mushroom>);
addTrident();
addElytra();

craftingTable.addShapeless("crimson_roots_to_redstone", <item:minecraft:redstone>, [<item:minecraft:crimson_roots>]);
craftingTable.addShapeless("weeping_vines_to_redstone", <item:minecraft:redstone>, [<item:minecraft:weeping_vines>]);
craftingTable.addShapeless("crimson_fungus_to_glowstone", <item:minecraft:glowstone_dust>, [<item:minecraft:crimson_fungus>]);
craftingTable.addShapeless("gravel_to_sand", <item:minecraft:sand>, [<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>]);

craftingTable.addShapeless("wool_to_string", <item:minecraft:string> * 4, [
	<item:minecraft:white_wool>
]);

craftingTable.addShapeless("obsidian_from_lava_water", <item:minecraft:obsidian>, [
	<item:minecraft:water_bucket>, <item:minecraft:lava_bucket>
]);


craftingTable.addShapeless("torch_from_flint_and_stone", <item:minecraft:torch>, [
	Tags.stone, <item:minecraft:flint>
]);

craftingTable.addShapeless("andesite_from_stone", <item:minecraft:andesite>, [
	Tags.stone, <item:minecraft:cobblestone>
]);

/*craftingTable.addShapeless("wool_from_snow_block_and_shears", <item:minecraft:white_wool>, [
	<item:minecraft:shears>.anyDamage().transformDamage(10), <item:minecraft:snow_block>
]);*/

function addCheckeredPattern(name as string, material1 as IIngredient, material2 as IIngredient) as void 
{
	var A = material1;
	var B = material2;

	craftingTable.addShaped(name, <item:minecraft:${name}>, [
		[A, B, A],
		[B, A, B],
		[A, B, A]
	]);
}

public function addFullHouse(name as string, output as IItemStack, material as IIngredient) as void 
{
	var M = material;

	craftingTable.addShaped(name, output, [
		[M, M, M],
		[M, M, M],
		[M, M, M]
	]);
}

function addElytra() as void 
{
	var N = <item:minecraft:nether_star>;
	var F = <item:minecraft:feather>;
	var S = <item:minecraft:string>;
	var A = <item:minecraft:air>;
	
	craftingTable.addShaped("elytra", <item:minecraft:elytra>, [
		[A, S, A],
		[F, N, F],
		[F, A, F]
	]);
}

function addTrident() as void 
{
	var I = <item:minecraft:iron_ingot>;
	var P = <item:minecraft:prismarine_shard>;
	var A = <item:minecraft:air>;
	
	craftingTable.addShaped("trident", <item:minecraft:trident>, [
		[A, I, I],
		[A, P, I],
		[P, A, A]
	]);
}

function addSponge() as void 
{
	var W = <item:minecraft:water_bucket>;
	var A = <item:minecraft:yellow_wool>;
	var B = <item:minecraft:yellow_dye>;
	
	craftingTable.addShaped("sponge", <item:minecraft:sponge>, [
		[B, A, B],
		[A, W, A],
		[B, A, B]
	]);
}

function addEmptyEgg() as void 
{
	var A = <item:minecraft:air>;
	var E = <item:minecraft:egg>;
	var N = <item:minecraft:nether_star>;
	
	craftingTable.addShaped("empty_egg", <item:kubejs:empty_spawn_egg>, [
		[A, E, A],
		[E, N, E],
		[A, E, A]
	]);
}

function addIce() as void 
{
	var S = <item:minecraft:snowball>;
	var W = <item:minecraft:water_bucket>;
	
	craftingTable.addShaped("ice", <item:minecraft:ice>, [
		[S, S, S],
		[S, W, S],
		[S, S, S]
	]);
}

function addCobweb() as void 
{
	var A = <item:minecraft:air>;
	var S = <item:minecraft:string>;
	
	craftingTable.addShaped("cobweb", <item:minecraft:cobweb>, [
		[S, A, S],
		[A, S, A],
		[S, A, S]
	]);
}

function addSaddle() as void 
{
	var A = <item:minecraft:air>;
	var L = <item:minecraft:leather>;
	var N = <item:minecraft:iron_nugget>;

	craftingTable.addShaped("saddle", <item:minecraft:saddle>, [
		[L, L, L],
		[L, A, L],
		[N, A, N]
	]);
}

function addChainmailArmor() as void
{
	var A = <item:minecraft:air>;
	var C = <item:minecraft:chain>;
	var N = <item:minecraft:iron_nugget>;
	var I = <item:minecraft:iron_ingot>;

	craftingTable.addShaped("chainmail_helmet", <item:minecraft:chainmail_helmet>, [
		[N, I, N],
		[C, A, C]
	]);

	craftingTable.addShaped("chainmail_chestplate", <item:minecraft:chainmail_chestplate>, [
		[C, A, C],
		[C, C, C],
		[N, C, N]
	]);

	craftingTable.addShaped("chainmail_leggings", <item:minecraft:chainmail_leggings>, [
		[N, I, N],
		[C, A, C],
		[C, A, C]
	]);

	craftingTable.addShaped("chainmail_boots", <item:minecraft:chainmail_boots>, [
		[C, A, C],
		[I, A, I]
	]);
}

function addHorseArmor(output as string, material as string) as void
{
	var M = <item:minecraft:${material}>;
	var A = <item:minecraft:air>;

	craftingTable.addShaped(output + "_horse_armor", <item:minecraft:${output}_horse_armor>, [
		[M, A, M],
		[M, M, M],
		[M, A, M]
	]);
}