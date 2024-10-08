var S = <item:minecraft:wheat_seeds>;
var D = <item:minecraft:dirt>;

craftingTable.addShaped("rubber_sapling_from_dirt_and_seeds", <item:techreborn:rubber_sapling>, [
	[S, S, S],
	[S, D, S],
	[S, S, S]
]);

fixBrokenTechRebornRecipes();

function fixBrokenTechRebornRecipes() as void 
{
	var D = <item:minecraft:diamond>;
	var U = <item:techreborn:diamond_dust>;
	var C = <item:minecraft:copper_ingot>;
	var A = <item:minecraft:air>;
	
	craftingTable.remove(<item:techreborn:diamond_grinding_head>);

	craftingTable.addShaped("diamond_grinding_head", <item:techreborn:diamond_grinding_head> * 3, [
		[U, A, U],
		[A, D, A],
		[U, A, U]
	]);
	
	craftingTable.remove(<item:techreborn:diamond_saw_blade>);

	craftingTable.addShaped("diamond_saw_blade", <item:techreborn:diamond_saw_blade> * 4, [
		[U, A, U],
		[A, A, A],
		[U, A, U]
	]);
	
	craftingTable.remove(<item:techreborn:wrench>);
	
	craftingTable.addShaped("techreborn_wrench", <item:techreborn:wrench>, [
		[A, C, A],
		[A, C, C],
		[C, A, A]
	]);
}
