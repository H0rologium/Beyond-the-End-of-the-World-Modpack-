import crafttweaker.item.IItemStack as IItemStack;


//Book
recipes.addShaped("btebook",<minecraft:book>,[[<minecraft:leather>,<minecraft:paper>,<minecraft:paper>],[<minecraft:leather>,<minecraft:paper>,<minecraft:paper>],[<minecraft:leather>,<minecraft:paper>,<minecraft:paper>]]);
//EChest
recipes.addShaped("btendchst",<minecraft:ender_chest>,[[<mekanism:ingot>,<mekanism:ingot>,<mekanism:ingot>],[<mekanism:ingot>,<minecraft:ender_eye>,<mekanism:ingot>],[<mekanism:ingot>,<mekanism:ingot>,<mekanism:ingot>]]);
//BIBLantern'
recipes.addShaped("btecandletern",<bibliocraft:lanterngold>,[[<ore:paneGlassColorless>,<ore:dustGlowstone>,<ore:paneGlassColorless>],[<ore:ingotGold>,<ore:candle>,<ore:ingotGold>],[<ore:paneGlassColorless>,<ore:dustGlowstone>,<ore:paneGlassColorless>]]);


//Tier 1 ext crafting table
recipes.addShaped("btext1tble",<extendedcrafting:table_basic>,[[<astralsorcery:blockaltar>,<minecraft:furnace>,<ic2:te:46>],[<minecraft:crafting_table>,<opencomputers:upgrade:8>,<minecraft:crafting_table>],[<buildcraftfactory:autoworkbench_item>,<buildcraftfactory:autoworkbench_item>,<buildcraftfactory:autoworkbench_item>]]);


//Bonsai Pots
recipes.addShaped(<bonsaitrees:bonsaipot>, [[null, null, null],[<actuallyadditions:item_fertilizer>, <industrialforegoing:crop_recolector>, <actuallyadditions:item_fertilizer>], [<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]]);
recipes.addShaped(<bonsaitrees:bonsaipot:1>, [[null, <uppers:upper>, null],[null, <bonsaitrees:bonsaipot>, null], [null, <minecraft:hopper>, null]]);


//Redstone Clock
recipes.addShaped(<extrautils2:redstoneclock>, [[<extrautils2:compressedcobblestone>, <minecraft:redstone_block>, <extrautils2:compressedcobblestone>],[<minecraft:redstone_block>, <minecraft:clock>, <minecraft:redstone_block>], [<extrautils2:compressedcobblestone>, <minecraft:redstone_block>, <extrautils2:compressedcobblestone>]]);


//Serene Seasons
recipes.addShaped(<sereneseasons:greenhouse_glass> * 4, [[<ore:dyeCyan>, <minecraft:glass>, <ore:dyeCyan>],[<minecraft:glass>, <minecraft:planks>, <minecraft:glass>], [<ore:dyeCyan>, <minecraft:glass>, <ore:dyeCyan>]]);
