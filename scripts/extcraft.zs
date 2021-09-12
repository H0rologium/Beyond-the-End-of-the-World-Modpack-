//mods.extendedcrafting.TableCrafting.addShaped(1, <output>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);  
//mods.extendedcrafting.TableCrafting.addShaped(2, <output>, [[<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>], [<>, <>, <>, <>, <>]]);  
//mods.extendedcrafting.TableCrafting.addShaped(3, <output>, [[<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>]]);  
//mods.extendedcrafting.TableCrafting.addShaped(4, <output>, [[<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>], [<>, <>, <>, <>, <>, <>, <>, <>, <>]]);



//Tier 1
//Sync core
mods.extendedcrafting.TableCrafting.addShaped(1, <sync:item_placeholder>, [
	[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:block_misc:8>, <actuallyadditions:item_crystal_empowered:3>], 
	[<ore:gemLapis>, <ore:blockRedstone>, <ore:gemLapis>], 
	[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:block_misc:8>, <actuallyadditions:item_crystal_empowered:3>]
]);

//Potion rings
recipes.removeByRecipeName("potionfingers:ring");
recipes.remove(<extraalchemy:empty_ring>);
recipes.addShaped(<extraalchemy:empty_ring>, [[null, <minecraft:gold_ingot>, <scalinghealth:heartdust>],[<minecraft:gold_ingot>, <minecraft:potion>, <minecraft:gold_ingot>], [<minecraft:glowstone_dust>, <minecraft:gold_ingot>, <actuallyadditions:item_solidified_experience>]]);
recipes.addShaped(<potionfingers:ring>, [[<scalinghealth:heartdust>, <minecraft:gold_ingot>, null],[<minecraft:gold_ingot>, <minecraft:potion>, <minecraft:gold_ingot>], [<actuallyadditions:item_solidified_experience>, <minecraft:gold_ingot>, <minecraft:glowstone_dust>]]);

//Enchanting table
mods.extendedcrafting.TableCrafting.addShaped(1, <minecraft:enchanting_table>, [[<minecraft:bookshelf>, <industrialforegoing:enchantment_extractor>, <minecraft:bookshelf>], [<ore:gemDiamond>, <ore:obsidian>, <ore:gemDiamond>], [<ore:obsidian>, <ore:dustObsidian>, <ore:obsidian>]]);  

//EOE
mods.extendedcrafting.TableCrafting.addShapeless(1, <minecraft:ender_eye>, [<minecraft:compass>, <ore:materialEnderPearl>, <ore:rodBlaze>]);

//Second tier table
mods.extendedcrafting.TableCrafting.addShaped(1, <extendedcrafting:table_advanced>, [
	[<ore:blockGold>, <ironchest:iron_gold_chest_upgrade>, <ore:blockGold>], 
	[<ironchest:iron_gold_chest_upgrade>, <extendedcrafting:table_basic>, <ironchest:iron_gold_chest_upgrade>], 
	[<ore:blockGold>, <ironchest:iron_gold_chest_upgrade>, <ore:blockGold>]
]);

//Tier 2
//Wither skeleton skull
mods.extendedcrafting.TableCrafting.addShaped(2, <minecraft:skull:1>, [
	[<witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>], 
	[<witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>], 
	[<witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>], 
	[<witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>], 
	[<witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>, <witherskelefix:fragment>]
]);

//Advanced leaf blower
recipes.remove(<actuallyadditions:item_leaf_blower_advanced>);
mods.extendedcrafting.TableCrafting.addShaped(2, <actuallyadditions:item_leaf_blower_advanced>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
	[<ore:ingotIron>, <actuallyadditions:item_crystal:5>, <ore:gemDiamond>, <actuallyadditions:item_crystal:5>, <ore:ingotIron>], 
	[<ore:ingotIron>, <ore:gemDiamond>, <actuallyadditions:item_leaf_blower>, <ore:gemDiamond>, <ore:ingotIron>], 
	[<ore:ingotIron>, <actuallyadditions:item_crystal:5>, <ore:gemDiamond>, <actuallyadditions:item_crystal:5>, <ore:ingotIron>], 
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);

mods.extendedcrafting.TableCrafting.addShaped(2, <bountifulbaubles:wormholemirror>, [
	[null, null, <actuallyadditions:item_crystal:1>, null, null], 
	[null, <actuallyadditions:item_crystal:1>, <bountifulbaubles:potionwormhole>, <actuallyadditions:item_crystal:1>, null], 
	[<actuallyadditions:item_crystal:1>, <bountifulbaubles:potionwormhole>, <minecraft:ender_eye>, <bountifulbaubles:potionwormhole>, <actuallyadditions:item_crystal:1>], 
	[null, <actuallyadditions:item_crystal:1>, <bountifulbaubles:potionwormhole>, <actuallyadditions:item_crystal:1>, null], 
	[null, null, <actuallyadditions:item_crystal:1>, null, null]
]);

recipes.removeByRecipeName("bountifulbaubles:spectralsilt_magicmirror");
mods.extendedcrafting.TableCrafting.addShaped(2, <bountifulbaubles:magicmirror>, [
	[<ore:enderpearl>, <minecraft:compass>, <minecraft:compass>, <minecraft:compass>, <ore:enderpearl>], 
	[<minecraft:compass>, <ore:enderpearl>, <netherex:dull_mirror>, <ore:enderpearl>, <minecraft:compass>], 
	[<minecraft:compass>, <netherex:dull_mirror>, <bountifulbaubles:wormholemirror>, <netherex:dull_mirror>, <minecraft:compass>], 
	[<minecraft:compass>, <ore:enderpearl>, <netherex:dull_mirror>, <ore:enderpearl>, <minecraft:compass>], 
	[<ore:enderpearl>, <minecraft:compass>, <minecraft:compass>, <minecraft:compass>, <ore:enderpearl>]
]);

//Tinymobfarmlasso
recipes.remove(<tinymobfarm:lasso>);
mods.extendedcrafting.TableCrafting.addShaped(2, <tinymobfarm:lasso>, [
	[<minecraft:soul_sand>, <minecraft:soul_sand>, <ore:ingotAstralStarmetal>, <minecraft:soul_sand>, <minecraft:soul_sand>], 
	[<minecraft:soul_sand>, <extendedcrafting:material:10>, <minecraft:lead>, <extendedcrafting:material:10>, <minecraft:soul_sand>], 
	[<ore:ingotAstralStarmetal>, <minecraft:lead>, <minecraft:ghast_tear>, <minecraft:lead>, <ore:ingotAstralStarmetal>], 
	[<minecraft:soul_sand>, <extendedcrafting:material:10>, <minecraft:lead>, <extendedcrafting:material:10>, <minecraft:soul_sand>], 
	[<minecraft:soul_sand>, <minecraft:soul_sand>, <ore:ingotAstralStarmetal>, <minecraft:soul_sand>, <minecraft:soul_sand>]
]);

//BC Quarry
mods.extendedcrafting.TableCrafting.addShaped(2, <buildcraftbuilders:quarry>, [
	[<ore:gearIron>, <ore:gearTin>, <ore:gearTin>, <ore:gearTin>, <ore:gearIron>], 
	[<ore:gearIron>, <ore:gearIron>, <ore:gearIron>, <ore:gearIron>, <ore:gearIron>], 
	[<ore:gearOsmium>, <ore:gearOsmium>, <ore:gearOsmium>, <ore:gearOsmium>, <ore:gearOsmium>], 
	[<ore:gearDiamond>, <ore:gearGold>, <ore:gearGold>, <ore:gearGold>, <ore:gearDiamond>], 
	[<ore:gearDiamond>, <ore:gearGold>, <ic2:te:60>, <ore:gearGold>, <ore:gearDiamond>]
]);

//Brewing Stand
mods.extendedcrafting.TableCrafting.addShaped(2, <minecraft:brewing_stand>, [
	[<ore:obsidian>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:obsidian>], 
	[null, null, <ore:boneWitheredBlazed>, null, null], 
	[null, null, <ore:boneWitheredBlazed>, null, null], 
	[null, <ore:stone>, <ore:stone>, <ore:stone>, null], 
	[<ore:stone>, <ore:stone>, <minecraft:soul_sand>, <ore:stone>, <ore:stone>]
]);

//Third tier table
mods.extendedcrafting.TableCrafting.addShaped(2, <extendedcrafting:table_elite>, [
	[<ic2:crafting:19>, <ic2:crafting:19>, <ic2:crafting:19>, <ic2:crafting:19>, <ic2:crafting:19>], 
	[<ic2:crafting:19>, <ore:workbench>, <ore:workbench>, <ore:workbench>, <ic2:crafting:19>], 
	[<ic2:crafting:19>, <ore:workbench>, <extendedcrafting:table_advanced>, <ore:workbench>, <ic2:crafting:19>], 
	[<ic2:crafting:19>, <ore:workbench>, <ore:workbench>, <ore:workbench>, <ic2:crafting:19>], 
	[<ic2:crafting:19>, <ic2:crafting:19>, <ic2:crafting:19>, <ic2:crafting:19>, <ic2:crafting:19>]
]);

//spawner
mods.extendedcrafting.TableCrafting.addShaped(2, <minecraft:mob_spawner>, [
	[<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>], 
	[<actuallyadditions:item_misc:20>, <ore:netherStar>, <ore:netherStar>, <ore:netherStar>, <actuallyadditions:item_misc:20>], 
	[<actuallyadditions:item_misc:20>, <ore:netherStar>, <industrialforegoing:mob_imprisonment_tool>, <ore:netherStar>, <actuallyadditions:item_misc:20>], 
	[<actuallyadditions:item_misc:20>, <ore:netherStar>, <ore:netherStar>, <ore:netherStar>, <actuallyadditions:item_misc:20>], 
	[<actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>, <actuallyadditions:item_misc:20>]
]);


//Tier 3

//Leafblower
recipes.remove(<actuallyadditions:item_leaf_blower>);
mods.extendedcrafting.TableCrafting.addShaped(3, <actuallyadditions:item_leaf_blower>, [
	[null, null, null, null, <ore:stickWood>, <ore:stickWood>, null], 
	[null, null, null, <ore:stickWood>, <ore:stickWood>, null, <ore:stickWood>], 
	[null, <actuallyadditions:item_misc:8>, <ore:ingotIron>, <ore:stickWood>, null, <ore:stickWood>, <ore:stickWood>], 
	[<actuallyadditions:item_misc:8>, <ore:ingotIron>, <actuallyadditions:item_crystal:5>, <ore:ingotIron>, <ore:stickWood>, <ore:stickWood>, null], 
	[<ore:ingotIron>, <actuallyadditions:item_crystal:1>, <minecraft:lever>, <buildcraftcore:engine:1>, <ore:ingotIron>, null, null], 
	[null, <ore:ingotIron>, <actuallyadditions:item_crystal:5>, <ore:ingotIron>, null, null, null], 
	[null, null, <ore:ingotIron>, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(3, <environmentaltech:diode>, [
	[<ore:ingotSteel>, <ore:ingotSteel>, <environmentaltech:photovoltaic_cell>, <ore:ingotSteel>, <environmentaltech:photovoltaic_cell>, <ore:ingotSteel>, <ore:ingotSteel>], 
	[<ore:ingotSteel>, <environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>, <ore:ingotSteel>, <environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>, <ore:ingotSteel>], 
	[<environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>], 
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], 
	[<environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>, <advgenerators:iron_wiring>, <ore:dustRedstone>, <advgenerators:iron_wiring>, <environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>], 
	[<ore:ingotSteel>, <environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>, <ore:dustRedstone>, <environmentaltech:photovoltaic_cell>, <environmentaltech:photovoltaic_cell>, <ore:ingotSteel>], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <environmentaltech:photovoltaic_cell>, <ore:dustRedstone>, <environmentaltech:photovoltaic_cell>, <ore:ingotSteel>, <ore:ingotSteel>]
]);
//Sync rec's
recipes.removeByRecipeName("sync:shell_storage");
recipes.removeByRecipeName("sync:shell_constructor");

//Sync constructor
mods.extendedcrafting.TableCrafting.addShaped(3, <sync:item_shell_constructor>, [
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <sync:item_placeholder>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <thaumcraft:brain>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:2>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:2>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:2>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <sync:item_treadmill>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>]
]);

//Sync Storage
mods.extendedcrafting.TableCrafting.addShaped(3, <sync:item_shell_storage>, [
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <sync:item_placeholder>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:5>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:2>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:2>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:2>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <actuallyadditions:item_crystal_empowered:4>, <ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>]
]);


//Autoclicker
mods.extendedcrafting.TableCrafting.addShaped(3, <clickmachine:auto_clicker>, [
	[<actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:block_misc:9>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:block_misc:9>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <actuallyadditions:block_misc:9>], 
	[<openblocks:big_button>, <advgenerators:iron_wiring>, <advgenerators:iron_wiring>, <advgenerators:iron_wiring>, <advgenerators:iron_wiring>, <advgenerators:iron_wiring>, <ore:oc:pistonUpgrade>], 
	[<actuallyadditions:block_misc:9>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:block_misc:9>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>]
]);


//Final tier table
mods.extendedcrafting.TableCrafting.addShaped(3, <extendedcrafting:table_ultimate>, [
	[<ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>], 
	[<ore:blockEmerald>, <ore:blockRedstone>, <ore:blockRedstone>, <actuallyadditions:item_misc:19>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockEmerald>], 
	[<ore:blockEmerald>, <ore:blockSteel>, <ore:workbench>, <ore:netherStar>, <ore:workbench>, <ore:blockSteel>, <ore:blockEmerald>], 
	[<ore:blockEmerald>, <ore:blockSteel>, <ore:workbench>, <extendedcrafting:table_elite>, <ore:workbench>, <ore:blockSteel>, <ore:blockEmerald>], 
	[<ore:blockEmerald>, <ore:blockSteel>, <ore:workbench>, <ore:workbench>, <ore:workbench>, <ore:blockSteel>, <ore:blockEmerald>], 
	[<ore:blockEmerald>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:blockEmerald>], 
	[<ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>]
]);

//Tier 4
//Tinymobfarm stuff
recipes.remove(<tinymobfarm:stone_farm>);
recipes.remove(<tinymobfarm:iron_farm>);
recipes.remove(<tinymobfarm:gold_farm>);
recipes.remove(<tinymobfarm:diamond_farm>);
mods.extendedcrafting.TableCrafting.addShaped(4, <tinymobfarm:stone_farm>, [
	[<tinymobfarm:wood_farm>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <tinymobfarm:wood_farm>], 
	[<ore:boneWithered>, <futuremc:stonecutter>, <ore:stone>, <ore:stickWood>, <ore:stickWood>, <ore:stickWood>, <ore:stone>, <futuremc:stonecutter>, <ore:boneWithered>], 
	[<ore:boneWithered>, <ore:stone>, <ore:stone>, <minecraft:stone_sword>, <ore:gearStone>, <ore:gearStone>, <ore:stone>, <ore:stone>, <ore:boneWithered>], 
	[<ore:boneWithered>, <ore:stickWood>, <ore:gearStone>, <ore:stone>, <minecraft:stone_sword>, <ore:stone>, <minecraft:stone_sword>, <ore:stickWood>, <ore:boneWithered>], 
	[<ore:boneWithered>, <ore:stickWood>, <ore:gearStone>, <minecraft:stone_sword>, <ore:blockMagma>, <minecraft:stone_sword>, <ore:gearStone>, <ore:stickWood>, <ore:boneWithered>], 
	[<ore:boneWithered>, <ore:stickWood>, <minecraft:stone_sword>, <ore:stone>, <minecraft:stone_sword>, <ore:stone>, <ore:gearStone>, <ore:stickWood>, <ore:boneWithered>], 
	[<ore:boneWithered>, <ore:stone>, <ore:stone>, <ore:gearStone>, <ore:gearStone>, <minecraft:stone_sword>, <ore:stone>, <ore:stone>, <ore:boneWithered>], 
	[<ore:boneWithered>, <futuremc:stonecutter>, <ore:stone>, <ore:stickWood>, <ore:stickWood>, <ore:stickWood>, <ore:stone>, <futuremc:stonecutter>, <ore:boneWithered>], 
	[<tinymobfarm:wood_farm>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <ore:boneWithered>, <tinymobfarm:wood_farm>]
]);
mods.extendedcrafting.TableCrafting.addShaped(4, <tinymobfarm:iron_farm>, [
	[<tinymobfarm:stone_farm>, <ore:ingotIron>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:ingotIron>, <tinymobfarm:stone_farm>], 
	[<ore:ingotIron>, <ore:ingotIron>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:ingotIron>, <ore:ingotIron>], 
	[<ore:bone>, <ore:bone>, <ore:ingotIron>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal>, <ore:ingotIron>, <ore:bone>, <ore:bone>], 
	[<ore:bone>, <ore:bone>, <actuallyadditions:item_crystal>, <ore:ingotIron>, <actuallyadditions:item_crystal>, <ore:ingotIron>, <actuallyadditions:item_crystal>, <ore:bone>, <ore:bone>], 
	[<ore:bone>, <ore:bone>, <ore:bone>, <actuallyadditions:item_crystal>, <ore:blockIron>, <actuallyadditions:item_crystal>, <ore:bone>, <ore:bone>, <ore:bone>], 
	[<ore:bone>, <ore:bone>, <actuallyadditions:item_crystal>, <ore:ingotIron>, <actuallyadditions:item_crystal>, <ore:ingotIron>, <actuallyadditions:item_crystal>, <ore:bone>, <ore:bone>], 
	[<ore:bone>, <ore:bone>, <ore:ingotIron>, <actuallyadditions:item_crystal>, <ore:bone>, <actuallyadditions:item_crystal>, <ore:ingotIron>, <ore:bone>, <ore:bone>], 
	[<ore:ingotIron>, <ore:ingotIron>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:ingotIron>, <ore:bone>], 
	[<tinymobfarm:stone_farm>, <ore:ingotIron>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <ore:bone>, <tinymobfarm:stone_farm>]
]);
mods.extendedcrafting.TableCrafting.addShaped(4, <tinymobfarm:gold_farm>, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, <ore:ingotGold>, null, null, null, null], 
	[null, null, null, <ore:ingotGold>, <minecraft:ghast_tear>, <ore:ingotGold>, null, null, null], 
	[null, null, <ore:ingotGold>, <ore:bone>, <tinymobfarm:iron_farm>, <ore:bone>, <ore:ingotGold>, null, null], 
	[null, <ore:ingotGold>, <minecraft:ghast_tear>, <ore:ingotGold>, <ore:bone>, <ore:ingotGold>, <minecraft:ghast_tear>, <ore:ingotGold>, null], 
	[null, null, <ore:ingotGold>, <ore:bone>, <tinymobfarm:iron_farm>, <ore:bone>, <ore:ingotGold>, null, null], 
	[null, null, null, <ore:ingotGold>, <minecraft:ghast_tear>, <ore:ingotGold>, null, null, null], 
	[null, null, null, null, <ore:ingotGold>, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);
mods.extendedcrafting.TableCrafting.addShaped(4, <tinymobfarm:diamond_farm>, [
	[null, null, null, null, null, null, null, null, null], 
	[null, <minecraft:skull:1>, <ore:bone>, null, null, null, <ore:bone>, <minecraft:skull:1>, null], 
	[null, <ore:bone>, <ore:gearDiamond>, <ore:bone>, null, <ore:bone>, <ore:gearDiamond>, <ore:bone>, null], 
	[null, null, <ore:bone>, <ore:gearDiamond>, <ore:bone>, <ore:gearDiamond>, <ore:bone>, null, null], 
	[null, null, null, <ore:bone>, <tinymobfarm:gold_farm>, <ore:bone>, null, null, null], 
	[null, null, <ore:bone>, <ore:gearDiamond>, <ore:bone>, <ore:gearDiamond>, <ore:bone>, null, null], 
	[null, <ore:bone>, <ore:gearDiamond>, <ore:bone>, null, <ore:bone>, <ore:gearDiamond>, <ore:bone>, null], 
	[null, <minecraft:skull:1>, <ore:bone>, null, null, null, <ore:bone>, <minecraft:skull:1>, null], 
	[null, null, null, null, null, null, null, null, null]
]);


mods.extendedcrafting.TableCrafting.addShaped(4, <industrialforegoing:infinity_drill>, [
	[null, null, null, null, null, null, null, <railcraft:borehead_iron>, null], 
	[null, null, <ore:obsidian>, <ore:obsidian>, <ore:ingotSteel>, <railcraft:borehead_iron>, <railcraft:borehead_iron>, null, null], 
	[null, <ore:obsidian>, <ore:obsidian>, <ore:ingotSteel>, <buildcraftbuilders:quarry>, <ore:ingotSteel>, <railcraft:borehead_iron>, null, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:ingotSteel>, <buildcraftbuilders:quarry>, <ore:reBattery>, <buildcraftbuilders:quarry>, <ore:ingotSteel>, null, null], 
	[<ore:obsidian>, <ore:ingotSteel>, <buildcraftcore:engine:1>, <ore:reBattery>, <buildcraftbuilders:quarry>, <ore:ingotSteel>, null, null, null], 
	[<ore:ingotSteel>, <actuallyadditions:item_misc:19>, <ore:reBattery>, <ore:reBattery>, <ore:ingotSteel>, null, null, null, null], 
	[<ore:ingotSteel>, <ore:reBattery>, <ore:reBattery>, <ore:reBattery>, <ore:ingotSteel>, null, null, null, null], 
	[<ore:ingotSteel>, <ore:reBattery>, <ore:reBattery>, <ore:reBattery>, <ore:ingotSteel>, null, null, null, null], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null, null, null]
]);

//Boreheads
recipes.removeByRecipeName("railcraft:borehead_bronze$1");
recipes.removeByRecipeName("railcraft:borehead_iron$1");
recipes.removeByRecipeName("railcraft:borehead_steel$1");
recipes.removeByRecipeName("railcraft:borehead_diamond$1");
mods.extendedcrafting.TableCrafting.addShaped(4, <railcraft:borehead_diamond>, [
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockDiamond>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockDiamond>, <ore:gearDiamond>, <ore:blockDiamond>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockDiamond>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <railcraft:borehead_bronze>, [
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockBronze>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockBronze>, <ore:gearBronze>, <ore:blockBronze>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockBronze>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <railcraft:borehead_steel>, [
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockSteel>, <ore:gearSteel>, <ore:blockSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <railcraft:borehead_iron>, [
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockIron>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockIron>, <ore:gearIron>, <ore:blockIron>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:blockIron>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null], 
	[null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null], 
	[null, null, null, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, null, null, null], 
	[null, null, null, null, <ore:ingotSteel>, null, null, null, null]
]);

//Ender
mods.extendedcrafting.EnderCrafting.addShaped(<minecraft:end_portal_frame>, [[<actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>, <actuallyadditions:block_misc:6>],[<ore:endstone>, <minecraft:end_crystal>, <ore:endstone>],[<ore:endstone>, <ore:endstone>, <ore:endstone>]]);




//The table recipes themselves
