import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.ic2.Compressor;
//crafting tweaks to fix crafting compat

recipes.remove(<advgenerators:iron_frame>);
recipes.addShaped("Advanced Generators Iron Frame", <advgenerators:iron_frame> * 2,[[<ore:ingotIron>, null, <ore:ingotIron>],[<ore:ingotIron>, null, <ore:ingotIron>],[<ore:ingotIron>, null, <ore:ingotIron>]]);


//Obsidian refined dust fix through IE Crusher
//https://docs.blamejared.com/1.12/en/Mods/Immersive_Engineering/CraftTweaker_Support/Crusher/
mods.immersiveengineering.Crusher.removeRecipe(<mekanism:otherdust:5>);
mods.immersiveengineering.Crusher.addRecipe(<mekanism:ingot>, <ore:dustObsidian>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<railcraft:generic:7>, <minecraft:obsidian>, 4500);
mods.ic2.Extractor.addRecipe(<railcraft:dust>, <minecraft:obsidian>);
mods.ic2.Macerator.addRecipe(<nuclearcraft:gem_dust:3> * 2, <minecraft:obsidian>);
mods.ic2.Compressor.addRecipe(<mekanism:otherdust:5>, <ore:dustObsidian>);


//Removal of dupe recipe to fix water strainer
recipes.removeByRecipeName("harvestcraft:string_cropflax");


//Integration for garden cloche
recipes.removeByRecipeName("immersiveengineering:metal_devices/garden_cloche");
recipes.addShaped("btegclioche",<immersiveengineering:metal_device1:13>, [[<ore:blockGlassGreen>,<immersiveengineering:material:26>,<ore:blockGlassGreen>],[<ore:blockGlassGreen>,<bonsaitrees:bonsaipot:1>,<ore:blockGlassGreen>],[<ore:plankTreatedWood>,<immersiveengineering:material:8>,<ore:plankTreatedWood>]]);


