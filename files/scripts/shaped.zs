#Shaped Crafting Recipes
import crafttweaker.api.item.IItemStack;
#priority 1


#Dictionary conversions
var dict_ironingot = <tag:items:forge:ingots/iron>;
var dict_ironblock = <tag:items:forge:storage_blocks/iron>;
var chests = <tag:items:forge:chests>;
var signs = <tag:items:minecraft:stairs>;
var steps = <tag:items:minecraft:signs>;

#Glass panes to block
craftingTable.addShaped("glassblock-new", <item:minecraft:glass>,[[<item:minecraft:glass_pane>,<item:minecraft:glass_pane>],[<item:minecraft:glass_pane>,<item:minecraft:glass_pane>]]);


#Anvil alt
craftingTable.addShaped("anvil-iron-alt",<item:minecraft:damaged_anvil>,[[dict_ironblock.asIIngredient(),dict_ironblock.asIIngredient(),dict_ironblock.asIIngredient()],[<item:minecraft:air>,dict_ironingot.asIIngredient(),<item:minecraft:air>],[dict_ironingot.asIIngredient(),dict_ironingot.asIIngredient(),dict_ironingot.asIIngredient()]]);

#Book alt
craftingTable.addShaped("book-alt",<item:minecraft:book>,[[<item:minecraft:leather>,<item:minecraft:paper>,<item:minecraft:paper>],[<item:minecraft:leather>,<item:minecraft:paper>,<item:minecraft:paper>],[<item:minecraft:leather>,<item:minecraft:paper>,<item:minecraft:paper>]]);

#uumater casing
craftingTable.addShaped("uu-alt-3", <item:youmatter:machine_casing>, [[<item:industrialforegoing:plastic>,dict_ironingot.asIIngredient(),<item:industrialforegoing:plastic>],[dict_ironingot.asIIngredient(),<item:thermal:iron_gear>,dict_ironingot.asIIngredient()],[<item:industrialforegoing:plastic>,dict_ironingot.asIIngredient(),<item:industrialforegoing:plastic>]]);

#Ships from little logistics (introduces plastic)
craftingTable.addShaped("ll-s-1", <item:littlelogistics:barge>, [[<item:minecraft:stick>,chests.asIIngredient(),<item:minecraft:stick>],[<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>]]);
craftingTable.addShaped("ll-s-2", <item:littlelogistics:chunk_loader_barge>, [[<item:minecraft:obsidian>,<item:minecraft:ender_eye>,<item:minecraft:obsidian>],[<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>]]);
craftingTable.addShaped("ll-s-3", <item:littlelogistics:fishing_barge>, [[<item:minecraft:fishing_rod>,<item:minecraft:fishing_rod>,<item:minecraft:fishing_rod>],[<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>]]);
craftingTable.addShaped("ll-s-4", <item:littlelogistics:fluid_barge>, [[<item:minecraft:glass>,<item:minecraft:air>,<item:minecraft:glass>],[<item:minecraft:air>,<item:minecraft:glass>,<item:minecraft:air>],[<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>]]);
craftingTable.addShaped("ll-s-5", <item:littlelogistics:seater_barge>, [[signs.asIIngredient(),steps.asIIngredient(),signs.asIIngredient()],[<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>]]);
craftingTable.addShaped("ll-s-6", <item:littlelogistics:tug>, [[<item:minecraft:air>,dict_ironingot.asIIngredient(),<item:minecraft:air>],[<item:create:water_wheel>,<item:minecraft:furnace>,<item:minecraft:piston>],[<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>]]);
craftingTable.addShaped("ll-s-7", <item:littlelogistics:energy_tug>, [[<item:minecraft:air>,dict_ironingot.asIIngredient(),<item:minecraft:air>],[<item:create:water_wheel>,<item:littlelogistics:vessel_charger>,<item:minecraft:piston>],[<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>,<item:industrialforegoing:plastic>]]);

