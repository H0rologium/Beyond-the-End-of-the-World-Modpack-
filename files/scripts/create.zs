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

#Alt Anvil Recipe

<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_anvil", <item:minecraft:anvil>, [[dict_steelblock.asIIngredient(), dict_steelblock.asIIngredient(), dict_steelblock.asIIngredient()], [<item:minecraft:air>,dict_steelingot.asIIngredient(), <item:minecraft:air>],[dict_steelingot.asIIngredient(),dict_steelingot.asIIngredient(),dict_steelingot.asIIngredient()]]);


#Base CC Computer
<recipetype:create:mechanical_crafting>.addRecipe("cc-base-new", <item:computercraft:computer_normal>,[[],[],[]]);

#Mob Heads
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_skeleton_head",<item:minecraft:skeleton_skull>,[[dict_bone.asIIngredient(),dict_bone.asIIngredient(),dict_bone.asIIngredient()],[dict_bone.asIIngredient(),<item:minecraft:air>,dict_bone.asIIngredient()],[dict_bone.asIIngredient(),dict_bone.asIIngredient(),dict_bone.asIIngredient()]]);
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_zombie_head",<item:minecraft:zombie_head>,[[<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>],[<item:minecraft:rotten_flesh>,<item:minecraft:air>,<item:minecraft:rotten_flesh>],[<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>,<item:minecraft:rotten_flesh>]]);
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_creeper_head", <item:minecraft:creeper_head>,[[gunpowder.asIIngredient(),gunpowder.asIIngredient(),gunpowder.asIIngredient()],[gunpowder.asIIngredient(),<item:minecraft:air>,gunpowder.asIIngredient()],[gunpowder.asIIngredient(),gunpowder.asIIngredient(),gunpowder.asIIngredient()]]);

