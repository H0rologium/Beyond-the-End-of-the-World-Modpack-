import crafttweaker.api.item.IItemStack;
#priority 15

#Remove and Hide. Used for complete removal
val completeremovals as IItemStack[] = [<item:mekanism:flamethrower>,<item:mekanism:electric_bow>,<item:mekanism:meka_tool>,<item:mekanism:free_runners>,<item:mekanism:scuba_mask>,<item:mekanism:scuba_tank>,<item:mekanism:jetpack>,<item:mekanism:jetpack_armored>];

for cr in completeremovals{
    recipes.removeRecipe(cr);
    mods.jei.JEI.hideItem(cr);
}
#Remove. used for making our own recipe later
val partremovals as IItemStack[]  = [<item:minecraft:book>,<item:mekanism:atomic_disassembler>,<item:mekanism:mekasuit_helmet>,<item:mekanism:mekasuit_bodyarmor>,<item:mekanism:mekasuit_pants>,<item:mekanism:mekasuit_boots>];

for pr in partremovals{
    recipes.removeRecipe(pr);
}

#Only remove from the crafting table recipes
var crafttablerecs as IItemStack[] = [];

for ctb in crafttablerecs{
    craftingTable.removeRecipe(ctb);
}

#Use for recreating recipe in create
val createstuff as IItemStack[] = [<item:minecraft:loom>,<item:minecraft:anvil>,<item:computercraft:computer_normal>];

for cs in createstuff{
    recipes.removeRecipe(cs);
}

#Remove smelting recipes for repurposing
var smemltremake as IItemStack[] = [<item:minecraft:glass>];

for smem in smemltremake{
    recipes.removeRecipe(smem);
}