import crafttweaker.api.item.IItemStack;

addSapling(<item:minecraft:wheat_seeds>, <item:minecraft:oak_sapling>);
addSapling(<item:minecraft:oak_sapling>, <item:minecraft:spruce_sapling>);
addSapling(<item:minecraft:spruce_sapling>, <item:minecraft:birch_sapling>);
addSapling(<item:minecraft:birch_sapling>, <item:minecraft:jungle_sapling>);
addSapling(<item:minecraft:jungle_sapling>, <item:minecraft:acacia_sapling>);
addSapling(<item:minecraft:acacia_sapling>, <item:minecraft:cherry_sapling>);
addSapling(<item:minecraft:cherry_sapling>, <item:minecraft:dark_oak_sapling>);

public class SaplingGlobal 
{
	public static var i = 0;
}

function addSapling(input as IItemStack, output as IItemStack) as void 
{
	var D = <item:minecraft:dirt>;
	var A = <item:minecraft:air>;
	
	craftingTable.addShaped("sapling_" + SaplingGlobal.i, output, [
		[A, D, A],
		[D, input, D],
		[A, D, A]
	]);
	
	SaplingGlobal.i++;
}