import crafttweaker.api.item.IItemStack;
#priority 15

#Remove and Hide. Used for complete removal
val completeremovals as IItemStack[] = [<item:mekanism:advanced_logistical_transporter>,<item:mekanism:elite_logistical_transporter>,<item:mekanism:ultimate_logistical_transporter>,<item:mekanism:restrictive_transporter>,<item:mekanism:diversion_transporter>,<item:mekanism:basic_thermodynamic_conductor>,<item:mekanism:advanced_thermodynamic_conductor>,<item:mekanism:elite_thermodynamic_conductor>,<item:mekanism:ultimate_thermodynamic_conductor>,<item:mekanism:basic_universal_cable>,<item:mekanism:advanced_universal_cable>,<item:mekanism:elite_universal_cable>,<item:mekanism:ultimate_universal_cable>,<item:mekanism:basic_mechanical_pipe>,<item:mekanism:advanced_mechanical_pipe>,<item:mekanism:elite_mechanical_pipe>,<item:mekanism:ultimate_mechanical_pipe>,<item:mekanism:energized_smelter>,<item:mekanism:crusher>,<item:mekanism:teleporter_frame>,<item:thermal:machine_furnace>,<item:thermal:machine_sawmill>,<item:thermal:machine_pulverizer>,<item:thermal:machine_smelter>,<item:thermal:machine_insolator>,<item:thermal:machine_centrifuge>,<item:thermal:machine_press>,<item:thermal:machine_crucible>,<item:thermal:machine_refinery>,<item:thermal:machine_bottler>,<item:thermal:machine_brewer>,<item:thermal:machine_crafter>,<item:thermal:dynamo_stirling>,<item:thermal:dynamo_compression>,<item:thermal:dynamo_magmatic>,<item:thermal:dynamo_numismatic>,<item:thermal:dynamo_lapidary>,<item:thermal:dynamo_disenchantment>,<item:thermal:dynamo_gourmand>,<item:thermal:machine_pyrolyzer>,<item:scalinghealth:bandages>,<item:scalinghealth:medkit>,<item:moreminecarts:minecart_with_chunk_loader>,<item:mekanismgenerators:heat_generator>,<item:mekanismgenerators:bio_generator>,<item:mekanism:painting_machine>,<item:mekanism:pigment_extractor>,<item:mekanism:teleporter>,<item:mekanism:basic_bin>,<item:mekanism:advanced_bin>,<item:mekanism:elite_bin>,<item:mekanism:ultimate_bin>,<item:mekanism:basic_smelting_factory>,<item:mekanism:advanced_smelting_factory>,<item:mekanism:elite_smelting_factory>,<item:mekanism:ultimate_smelting_factory>,<item:mekanism:portable_teleporter>,<item:mekanism:upgrade_speed>,<item:mekanism:upgrade_anchor>,<item:mekanism:upgrade_stone_generator>,<item:industrialforegoing:wither_builder>,<item:industrialforegoing:plant_gatherer>,<item:industrialforegoing:enchantment_applicator>,<item:create:diving_helmet>,<item:create:diving_boots>,<item:industrialforegoing:ore_laser_base>,<item:industrialforegoing:fluid_collector>,<item:industrialforegoing:fluid_laser_base>,<item:mekanism:basic_logistical_transporter>,<item:extraweapons:automatic_pistol>,<item:extraweapons:bazooka>,<item:extraweapons:pistol>,<item:extraweapons:assault_rifle>,<item:mekanism:digital_miner>,<item:mekanism:flamethrower>,<item:mekanism:electric_bow>,<item:mekanism:meka_tool>,<item:mekanism:free_runners>,<item:mekanism:scuba_mask>,<item:mekanism:scuba_tank>,<item:mekanism:jetpack>,<item:mekanism:jetpack_armored>];

for cr in completeremovals{
    recipes.removeRecipe(cr);
    mods.jei.JEI.hideItem(cr);
}
#Remove. used for making our own recipe later
val partremovals as IItemStack[]  = [<item:minecraft:book>];

for pr in partremovals{
    recipes.removeRecipe(pr);
}

#Only remove from the crafting table recipes
var crafttablerecs as IItemStack[] = [<item:littlelogistics:barge>,<item:littlelogistics:chunk_loader_barge>,<item:littlelogistics:fishing_barge>,<item:littlelogistics:fluid_barge>,<item:littlelogistics:seater_barge>,<item:littlelogistics:tug>,<item:littlelogistics:energy_tug>,<item:bountifulbaubles:wormhole_mirror>];

for ctb in crafttablerecs{
    craftingTable.removeRecipe(ctb);
}

#Use for recreating recipe in create
val createstuff as IItemStack[] = [<item:waterstrainer:strainer_base>,<item:youmatter:machine_casing>,<item:youmatter:replicator>,<item:youmatter:creator>,<item:draconicevolution:crafting_core>,<item:industrialforegoing:enchantment_extractor>,<item:ring_of_teleport:ring_of_teleport>,<item:movingelevators:elevator_block>,<item:movingelevators:display_block>,<item:movingelevators:button_block>,<item:minecraft:loom>,<item:mekanism:atomic_disassembler>,<item:minecraft:anvil>,<item:computercraft:computer_normal>,<item:computercraft:computer_advanced>,<item:mekanism:mekasuit_helmet>,<item:mekanism:mekasuit_bodyarmor>,<item:mekanism:mekasuit_pants>,<item:mekanism:mekasuit_boots>];

for cs in createstuff{
    recipes.removeRecipe(cs);
}

#Remove smelting recipes for repurposing
var smemltremake as IItemStack[] = [<item:minecraft:glass>];

for smem in smemltremake{
    recipes.removeRecipe(smem);
}

