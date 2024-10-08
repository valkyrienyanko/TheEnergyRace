replacePlaques();

function replacePlaques() as void 
{
	var A = <item:minecraft:air>;
	var S = <tag:items:minecraft:signs>;
	var I = <item:minecraft:iron_ingot>;
	var C = <item:minecraft:copper_ingot>;
	var G = <item:minecraft:gold_ingot>;
	
	craftingTable.remove(<item:suppsquared:copper_plaque>);
	craftingTable.remove(<item:suppsquared:iron_plaque>);
	craftingTable.remove(<item:suppsquared:gold_plaque>);
	
	craftingTable.addShaped("copper_plaque", <item:suppsquared:copper_plaque>, [
		[C, S, C],
		[A, A, A],
		[A, A, A]
	]);
	
	craftingTable.addShaped("iron_plaque", <item:suppsquared:iron_plaque>, [
		[I, S, I],
		[A, A, A],
		[A, A, A]
	]);
	
	craftingTable.addShaped("gold_plaque", <item:suppsquared:gold_plaque>, [
		[G, S, G],
		[A, A, A],
		[A, A, A]
	]);
}