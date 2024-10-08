public class Tags 
{
	public static var stone = <tag:items:theenergyrace:materials/stone>;
	
	public this()
	{
		stone.add(<item:minecraft:stone>, <item:minecraft:cobblestone>, <item:minecraft:diorite>, <item:minecraft:andesite>, 	
			<item:minecraft:deepslate>, <item:minecraft:cobbled_deepslate>, <item:minecraft:blackstone>, <item:minecraft:tuff>);
	}
}

new Tags();