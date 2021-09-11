import mods.jei.JEI.removeAndHide as rh;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;
import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;
import mods.industrialforegoing.FluidDictionary;


//Wither related things
<ore:dustWither>.add(<darkutils:material>);
<ore:dustWither>.add(<quark:black_ash>);



//Thermalfoundation to ic2 hammer stuff
recipes.addShapeless("plate32b", <thermalfoundation:material:32>, [<ore:ingotIron>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate33b", <thermalfoundation:material:33>, [<ore:ingotGold>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate320b", <thermalfoundation:material:320>, [<ore:ingotCopper>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate321b", <thermalfoundation:material:321>, [<ore:ingotTin>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate322b", <thermalfoundation:material:322>, [<ore:ingotSilver>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate323b", <thermalfoundation:material:323>, [<ore:ingotLead>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate324b", <thermalfoundation:material:324>, [<ore:ingotAluminum>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate325b", <thermalfoundation:material:325>, [<ore:ingotNickel>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate326b", <thermalfoundation:material:326>, [<ore:ingotPlatinum>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate327b", <thermalfoundation:material:327>, [<ore:ingotIridium>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate328b", <thermalfoundation:material:328>, [<ore:ingotMithril>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate352b", <thermalfoundation:material:352>, [<ore:ingotSteel>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate353b", <thermalfoundation:material:353>, [<ore:ingotElectrum>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate354b", <thermalfoundation:material:354>, [<ore:ingotInvar>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate355b", <thermalfoundation:material:355>, [<ore:ingotBronze>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate356b", <thermalfoundation:material:356>, [<ore:ingotConstantan>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate357b", <thermalfoundation:material:357>, [<ore:ingotSignalum>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate358b", <thermalfoundation:material:358>, [<ore:ingotLumium>, <ic2:forge_hammer>.anyDamage()]);
recipes.addShapeless("plate359b", <thermalfoundation:material:359>, [<ore:ingotEnderium>, <ic2:forge_hammer>.anyDamage()]);
	

//Smelting changes
furnace.setFuel(<ore:dustSulfur>, 300);
furnace.setFuel(<thermalfoundation:material:832>, 800);
furnace.setFuel(<forestry:resource_storage>, 500);
furnace.setFuel(<forestry:apatite>, 50);



//Fluid Dictionary
FluidDictionary.add("seed.oil", "seed_oil", 1);
FluidDictionary.add("sulfuric_acid", "sulfuricacid", 1);
FluidDictionary.add("hydrogen", "ic2hydrogen", 1);
FluidDictionary.add("hydrogen", "liquidhydrogen", 1);
FluidDictionary.add("liquidhydrogen", "ic2hydrogen", 1);




//Additional fuels for bio reactor and protein reactor

for item in <ore:listAllmeatraw>.items {
	ProteinReactor.add(item);
}

val otherCrops = [
	<harvestcraft:breadfruititem>,
	<harvestcraft:mustardseedsitem>,
	<harvestcraft:spiceleafitem>,
	<harvestcraft:gingeritem>,
	<harvestcraft:garlicitem>,
	<harvestcraft:peanutitem>,
	<harvestcraft:oatsitem>,
	<harvestcraft:barleyitem>,
	<harvestcraft:chilipepperitem>,
	<harvestcraft:pecanitem>,
	<harvestcraft:pistachioitem>,
	<harvestcraft:almonditem>,
	<harvestcraft:kenafitem>,
	<harvestcraft:milletitem>,
	<harvestcraft:cashewitem>,
	<harvestcraft:sisalitem>,
	<harvestcraft:quinoaitem>,
	<harvestcraft:juteitem>,
	<harvestcraft:flaxitem>,
	<harvestcraft:amaranthitem>,
	<harvestcraft:kaleitem>,
	<harvestcraft:chestnutitem>,
	<harvestcraft:walnutitem>
] as IItemStack[];

for crop in otherCrops {
	BioReactor.add(crop);
}

for seed in <ore:listAllseed>.items {
	BioReactor.add(seed);
}
	
for veggie in <ore:listAllveggie>.items {
	BioReactor.add(veggie);
}
	
for fruit in <ore:listAllfruit>.items {
	BioReactor.add(fruit);
}


