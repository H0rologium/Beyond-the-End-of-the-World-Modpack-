import mods.zenstages.ZenStager;
import mods.zenstages.Stage;


//Core stages
//dirt stage, do not keep them here long
static stageDirt as Stage  = ZenStager.initStage("Animal");
//All other stages
static stageNeo as Stage = ZenStager.initStage("Neolithic");
static stageStone as Stage = ZenStager.initStage("Stone");
static stageIron as Stage = ZenStager.initStage("Metallic");
//Nether portal and gems accessible from this stage
static stageInd as Stage = ZenStager.initStage("Industrial");
//Space age will allow majority of portal travel
static stageSpace as Stage = ZenStager.initStage("Space");
static stagePT as Stage = ZenStager.initStage("Post-Tech");
static stageFinal as Stage = ZenStager.initStage("Ascendant");
//Disabled items, ores,mobs and dims
static stageDisabled as Stage = ZenStager.initStage("disabled");
//creative only
static stageCreative as Stage = ZenStager.initStage("creative");

//Mob Stages | using OB config instead



//Dev stages
mods.WailaStages.addWailaStage("Stone");
