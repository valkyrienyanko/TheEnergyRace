replaceStorageTerminal();
replaceInventoryConnector();
replaceInventoryCable();
replaceInventoryCableFiltered();
replaceCraftingTerminal();
replaceWirelessTerminal();

function replaceStorageTerminal() as void 
{
	craftingTable.remove(<item:toms_storage:ts.storage_terminal>);

	var W = <tag:items:minecraft:planks>;
	var G = <item:minecraft:cobblestone>;
	var C = <item:minecraft:chest>;
	var D = <item:minecraft:dirt>;
	var T = <item:minecraft:iron_ingot>;
	
	craftingTable.addShaped("storage_terminal", <item:toms_storage:ts.storage_terminal>, [
		[W, D, W],
		[C, T, G],
		[W, D, W]
	]);
}

function replaceInventoryConnector() as void 
{
	craftingTable.remove(<item:toms_storage:ts.inventory_connector>);

	var W = <tag:items:minecraft:planks>;
	var C = <item:minecraft:chest>;
	var R = <item:minecraft:dirt>;
	var T = <item:minecraft:iron_ingot>;
	
	craftingTable.addShaped("inventory_connector", <item:toms_storage:ts.inventory_connector>, [
		[W, R, W],
		[C, T, C],
		[W, R, W]
	]);
}

function replaceInventoryCable() as void 
{
	craftingTable.remove(<item:toms_storage:ts.inventory_cable_connector>);

	var W = <tag:items:minecraft:planks>;
	var C = <item:minecraft:chest>;
	var R = <item:minecraft:dirt>;
	var I = <item:toms_storage:ts.inventory_cable>;
	var A = <item:minecraft:air>;
	
	craftingTable.addShaped("inventory_cable_connector", <item:toms_storage:ts.inventory_cable_connector>, [
		[A, R, W],
		[I, C, R],
		[A, R, W]
	]);
}

function replaceInventoryCableFiltered() as void 
{
	craftingTable.remove(<item:toms_storage:ts.inventory_cable_connector_filtered>);

	var A = <item:minecraft:air>;
	var P = <item:minecraft:paper>;
	var R = <item:minecraft:dirt>;
	
	var F = <item:toms_storage:ts.inventory_cable_connector>;
	
	craftingTable.addShaped("inventory_cable_connector_filtered", <item:toms_storage:ts.inventory_cable_connector_filtered>, [
		[A, R, A],
		[P, F, P],
		[A, R, A]
	]);
}

function replaceCraftingTerminal() as void 
{
	craftingTable.remove(<item:toms_storage:ts.crafting_terminal>);

	var C = <item:minecraft:crafting_table>;
	var R = <item:minecraft:dirt>;
	var S = <item:toms_storage:ts.storage_terminal>;
	
	craftingTable.addShaped("crafting_terminal", <item:toms_storage:ts.crafting_terminal>, [
		[C, R, C],
		[R, S, R],
		[C, R, C]
	]);
}

function replaceWirelessTerminal() as void 
{
	craftingTable.remove(<item:toms_storage:ts.wireless_terminal>);

	var W = <tag:items:minecraft:planks>;
	var G = <item:minecraft:glass>;
	var R = <item:minecraft:dirt>;
	var T = <item:minecraft:cobblestone>;
	
	craftingTable.addShaped("wireless_terminal", <item:toms_storage:ts.wireless_terminal>, [
		[W, R, W],
		[R, T, G],
		[W, R, W]
	]);
}