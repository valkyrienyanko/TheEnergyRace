import crafttweaker.api.item.IItemStack;

addCoin("netherite", <item:createdeco:netherite_sheet>);
addCoin("gold", <item:create:golden_sheet>);
addCoin("iron", <item:create:iron_sheet>);
addCoin("brass", <item:create:brass_sheet>);
addCoin("copper", <item:create:copper_sheet>);
addCoin("zinc", <item:createdeco:zinc_sheet>);
addCoin("industrial_iron", <item:createdeco:industrial_iron_sheet>);

function addCoin(type as string, sheet as IItemStack) as void 
{
	<recipetype:create:pressing>.remove(<item:createdeco:${type}_coin>);
	craftingTable.remove(<item:createdeco:${type}_coin>);
	craftingTable.remove(<item:createdeco:${type}_coinstack>);
	
	<recipetype:create:compacting>.addRecipe("pressed_" + type + "_coin", <constant:create:heat_condition:none>, [<item:createdeco:${type}_coin> % 100], [sheet], [<fluid:minecraft:water> * 250], 300);
	
	<recipetype:create:compacting>.addRecipe("pressed_" + type + "_coin_stack", <constant:create:heat_condition:none>, [<item:createdeco:${type}_coinstack> % 100], [<item:createdeco:${type}_coin> * 9], [<fluid:minecraft:water> * 250], 300);
	
	<recipetype:create:mixing>.addRecipe("mixing_" + type + "_coin", <constant:create:heat_condition:none>, [<item:createdeco:${type}_coin> * 9 % 100], [<item:createdeco:${type}_coinstack>], [<fluid:minecraft:water> * 250], 200);
}