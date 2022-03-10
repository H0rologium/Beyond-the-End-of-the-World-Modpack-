#For create things
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.MCItemDefinition;
import stdlib.List;
#priority 1
// <recipetype:create:mechanical_crafting>.addRecipe(String name, IItemStack output, IIngredient[][] ingredients)
// <recipetype:create:mechanical_crafting>.removeRecipe(IItemStack output)

#Dictionary Definitions
var dict_steelblock = <tag:items:forge:storage_blocks/steel>;
var dict_steelingot = <tag:items:forge:ingots/steel>;
var dict_bone = <tag:items:forge:bones>;
var gunpowder = <tag:items:forge:gunpowder>;
var stone = <tag:items:forge:stone>;
var gold = <tag:items:forge:ingots/gold>;

#Alt Anvil Recipe

<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_anvil", <item:minecraft:anvil>, [[dict_steelblock.asIIngredient(), dict_steelblock.asIIngredient(), dict_steelblock.asIIngredient()], [<item:minecraft:air>,dict_steelingot.asIIngredient(), <item:minecraft:air>],[dict_steelingot.asIIngredient(),dict_steelingot.asIIngredient(),dict_steelingot.asIIngredient()]]);


#Base CC Computer
<recipetype:create:mechanical_crafting>.addRecipe("cc-base-new", <item:computercraft:computer_normal>,[[stone.asIIngredient(),<item:youmatter:compute_module>,stone.asIIngredient()],[stone.asIIngredient(),<item:projectred-core:silicon_chip>,stone.asIIngredient()],[stone.asIIngredient(),<item:glassential:glass_dark>,stone.asIIngredient()]]);

#Advanced CC Computer
<recipetype:create:mechanical_crafting>.addRecipe("cc-adv-new", <item:computercraft:computer_advanced>,[[gold.asIIngredient(),<item:youmatter:thumb_drive>, gold.asIIngredient()],[gold.asIIngredient(), <item:computercraft:computer_normal>, gold.asIIngredient()],[gold.asIIngredient(), <item:glassential:glass_dark>,gold.asIIngredient()]]);


#Mob Heads
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_skeleton_head",<item:minecraft:skeleton_skull>,[[dict_bone.asIIngredient(),dict_bone.asIIngredient(),dict_bone.asIIngredient()],[dict_bone.asIIngredient(),<item:minecraft:air>,dict_bone.asIIngredient()],[dict_bone.asIIngredient(),dict_bone.asIIngredient(),dict_bone.asIIngredient()]]);
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_zombie_head",<item:minecraft:zombie_head>,[[<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>],[<item:minecraft:rotten_flesh>,<item:minecraft:air>,<item:minecraft:rotten_flesh>],[<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>]]);
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_creeper_head", <item:minecraft:creeper_head>,[[gunpowder.asIIngredient(),gunpowder.asIIngredient(),gunpowder.asIIngredient()],[gunpowder.asIIngredient(),<item:minecraft:air>,gunpowder.asIIngredient()],[gunpowder.asIIngredient(),gunpowder.asIIngredient(),gunpowder.asIIngredient()]]);


#Alternate Atomic Dissassembler
<recipetype:create:mechanical_crafting>.addRecipe("atomic_dissassembler_alt", <item:mekanism:atomic_disassembler>, [[<item:minecraft:diamond_pickaxe>,<item:extraweapons:diamondmultitool>,<item:bountifulbaubles:gloves_digging_diamond>],[<item:minecraft:air>,<item:mekanism:ultimate_energy_cube>,<item:minecraft:air>],[<item:minecraft:air>,<item:extraweapons:reinforced_handle>,<item:minecraft:air>]]);


#Alt Mekanism Armors
<recipetype:create:mechanical_crafting>.addRecipe("maicmo-1", <item:mekanism:mekasuit_helmet>, [[<item:mekanism:hdpe_sheet>,<item:mekanism:ultimate_control_circuit>,<item:mekanism:hdpe_sheet>],[<item:mekanism:hdpe_sheet>,<item:advancednetherite:netherite_diamond_helmet>,<item:mekanism:hdpe_sheet>],[<item:mekanism:pellet_polonium>,<item:mekanism:basic_induction_cell>,<item:mekanism:pellet_polonium>]]);
<recipetype:create:mechanical_crafting>.addRecipe("maicmo-2", <item:mekanism:mekasuit_bodyarmor>, [[<item:mekanism:hdpe_sheet>,<item:mekanism:ultimate_control_circuit>,<item:mekanism:hdpe_sheet>],[<item:mekanism:hdpe_sheet>, <item:advancednetherite:netherite_diamond_chestplate>,<item:mekanism:hdpe_sheet>],[<item:mekanism:pellet_polonium>,<item:mekanism:basic_induction_cell>,<item:mekanism:pellet_polonium>]]);
<recipetype:create:mechanical_crafting>.addRecipe("maicmo-3", <item:mekanism:mekasuit_pants>, [[<item:mekanism:hdpe_sheet>, <item:mekanism:ultimate_control_circuit>,<item:mekanism:hdpe_sheet>],[<item:mekanism:hdpe_sheet>, <item:advancednetherite:netherite_diamond_leggings>,<item:mekanism:hdpe_sheet>],[<item:mekanism:pellet_polonium>,<item:mekanism:basic_induction_cell>,<item:mekanism:pellet_polonium>]]);
<recipetype:create:mechanical_crafting>.addRecipe("maicmo-4", <item:mekanism:mekasuit_boots>, [[<item:mekanism:hdpe_sheet>,<item:mekanism:ultimate_control_circuit>,<item:mekanism:hdpe_sheet>],[<item:mekanism:hdpe_sheet>,<item:advancednetherite:netherite_diamond_boots>,<item:mekanism:hdpe_sheet>],[<item:mekanism:pellet_polonium>,<item:mekanism:basic_induction_cell>,<item:mekanism:pellet_polonium>]]);

#Ring of teleport
<recipetype:create:mechanical_crafting>.addRecipe("tpring-alt",<item:ring_of_teleport:ring_of_teleport>, [[<item:curios:ring>,<item:powah:ender_core>,<item:powah:ender_core>],[<item:aoa3:blue_crystal>,<item:youmatter:umatter_bucket>,<item:aoa3:blue_crystal>],[<item:psi:psimetal>,<item:mekanism:teleportation_core>,<item:minecraft:air>]]);

#Elevatormod blocks
<recipetype:create:mechanical_crafting>.addRecipe("elevalt-1", <item:movingelevators:elevator_block>, [[dict_steelingot.asIIngredient(),<item:creategears:simple_gearshift>,dict_steelingot.asIIngredient()],[dict_steelingot.asIIngredient(),<item:minecraft:observer>,dict_steelingot.asIIngredient()],[dict_steelingot.asIIngredient(),<item:create:mechanical_piston>,dict_steelingot.asIIngredient()]]);
<recipetype:create:mechanical_crafting>.addRecipe("elevalt-2", <item:movingelevators:display_block>, [[dict_steelingot.asIIngredient(),<item:computercraft:pocket_computer_advanced>,dict_steelingot.asIIngredient()],[dict_steelingot.asIIngredient(),<item:computercraft:monitor_advanced>,dict_steelingot.asIIngredient()],[dict_steelingot.asIIngredient(),<item:minecraft:redstone>,dict_steelingot.asIIngredient()]]);
<recipetype:create:mechanical_crafting>.addRecipe("elevalt-3", <item:movingelevators:button_block>, [[dict_steelingot.asIIngredient(),<item:computercraft:pocket_computer_advanced>,dict_steelingot.asIIngredient()],[dict_steelingot.asIIngredient(),<item:assemblylinemachines:warped_sawdust>,dict_steelingot.asIIngredient()],[dict_steelingot.asIIngredient(),<item:assemblylinemachines:crank_shaft>,dict_steelingot.asIIngredient()]]);

#IE enchantment extractor
<recipetype:create:mechanical_crafting>.addRecipe("enex-alt", <item:industrialforegoing:enchantment_extractor>, [[<item:industrialforegoing:plastic>,<item:assemblylinemachines:mystium_block>,<item:industrialforegoing:plastic>],[<item:minecraft:enchanting_table>,<item:industrialforegoing:machine_frame_advanced>,<item:minecraft:enchanting_table>],[<item:industrialforegoing:plastic>,<item:thermal:electrum_gear>,<item:industrialforegoing:plastic>]]);

#Wormhole mirror
<recipetype:create:mechanical_crafting>.addRecipe("whi-alt", <item:bountifulbaubles:wormhole_mirror>, [[<item:envirocore:obsidian_plate>,<item:minecraft:end_rod>,<item:envirocore:obsidian_plate>],[<item:bountifulbaubles:potion_wormhole>,<item:bountifulbaubles:magic_mirror>,<item:bountifulbaubles:potion_wormhole>],[<item:envirocore:obsidian_plate>,<item:youmatter:umatter_bucket>,<item:envirocore:obsidian_plate>]]);

