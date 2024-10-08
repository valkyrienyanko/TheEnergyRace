replaceArmourersWorkshopItems();

function replaceArmourersWorkshopItems() as void 
{
	var A = <item:minecraft:air>;
	var C = <item:minecraft:cobblestone>;
	var D = <item:minecraft:dirt>;
	var I = <item:minecraft:iron_ingot>;
	
	craftingTable.remove(<item:armourers_workshop:skin-library-global>);
	
	craftingTable.addShaped("skin_library_creative", <item:armourers_workshop:skin-library-creative>, [
		[A, C, A],
		[C, D, C],
		[A, C, A]
	]);
	
	craftingTable.addShaped("global_skin_library", <item:armourers_workshop:skin-library-global>, [
		[A, C, A],
		[C, I, C],
		[A, C, A]
	]);
}