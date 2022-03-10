#Shaped Crafting Recipes
import crafttweaker.api.item.IItemStack;
#priority 1


#Dictionary conversions
var dict_ironingot = <tag:items:forge:ingots/iron>;
var dict_ironblock = <tag:items:forge:storage_blocks/iron>;

#Glass panes to block
craftingTable.addShaped("glassblock-new", <item:minecraft:glass>,[[<item:minecraft:glass_pane>,<item:minecraft:glass_pane>],[<item:minecraft:glass_pane>,<item:minecraft:glass_pane>]]);


#Anvil alt
craftingTable.addShaped("anvil-iron-alt",<item:minecraft:damaged_anvil>,[[dict_ironblock.asIIngredient(),dict_ironblock.asIIngredient(),dict_ironblock.asIIngredient()],[<item:minecraft:air>,dict_ironingot.asIIngredient(),<item:minecraft:air>],[dict_ironingot.asIIngredient(),dict_ironingot.asIIngredient(),dict_ironingot.asIIngredient()]]);

#Book alt
craftingTable.addShaped("book-alt",<item:minecraft:book>,[[<item:minecraft:leather>,<item:minecraft:paper>,<item:minecraft:paper>],[<item:minecraft:leather>,<item:minecraft:paper>,<item:minecraft:paper>],[<item:minecraft:leather>,<item:minecraft:paper>,<item:minecraft:paper>]]);

