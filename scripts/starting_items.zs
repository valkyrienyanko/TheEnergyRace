import crafttweaker.api.item.IItemStack;
import crafttweaker.api.entity.type.player.Player;
import mods.initialinventory.InvHandler;

// Offhand is slot 40

addItem("banana_cream_pie", <item:croptopia:banana_cream_pie>, 7, 3);
addItem("cherry_wine", <item:vinery:cherry_wine>, 15, 1);
addItem("cristel_wine", <item:vinery:cristel_wine>, 16, 1);
addItem("clark_wine", <item:vinery:clark_wine>, 17, 1);
addItem("sweetberry_milkshake", <item:beachparty:sweetberry_milkshake>, 8, 2);
addItem("wooden_sword", <item:minecraft:wooden_sword>, 0, 1);
addItem("wooden_axe", <item:minecraft:wooden_axe>, 1, 1);
addItem("torch", <item:minecraft:torch>, 2, 3);
addItem("wooden_boots", <item:immersive_armors:wooden_boots>, 36, 1);
addItem("wooden_leggings", <item:immersive_armors:wooden_leggings>, 37, 1);
addItem("wooden_chestplate", <item:immersive_armors:wooden_chestplate>, 38, 1);

function addItem(name as string, item as IItemStack, slot as int, amount as int) as void 
{
	InvHandler.addStartingItem(name, item, slot, (stack as IItemStack, player as Player) as IItemStack => {
		  return stack * amount;
	});
}