import mods.botanypots.ZenCrop;
import crafttweaker.api.BracketHandlers;

val CROP_RECIPES = <recipetype:botanypots:crop>;

val OAK = "minecraft:oak_log";
val DARK_OAK = "minecraft:dark_oak_log";
val SPRUCE = "minecraft:spruce_log";
val JUNGLE = "minecraft:jungle_log";
val CINNAMON = "croptopia:cinnamon_log";

val TREES = [
    ["almond", DARK_OAK], ["apple", OAK], ["apricot", OAK], ["avocado", SPRUCE], ["banana", JUNGLE], ["cashew", DARK_OAK],
    ["cherry", OAK], ["cinnamon", CINNAMON], ["coconut", JUNGLE], ["date", JUNGLE], ["dragonfruit", JUNGLE], ["fig", JUNGLE],
    ["grapefruit", JUNGLE], ["kumquat", JUNGLE], ["lemon", OAK], ["lime", OAK], ["mango", JUNGLE], ["nectarine", OAK],
    ["nutmeg", JUNGLE], ["orange", OAK], ["peach", OAK], ["pear", OAK], ["pecan", DARK_OAK], ["persimmon", OAK], ["plum", OAK],
    ["starfruit", OAK], ["walnut", DARK_OAK]
];

for tree in TREES {
    var fruit = "";
    if (tree[0] == "apple") {
        fruit = "minecraft:apple";
    } else {
        fruit = "croptopia:" + tree[0];
    }
    val sapling = "croptopia:" + tree[0] + "_sapling";
    val saplingItem = BracketHandlers.getItem(sapling);
    val fruitItem = BracketHandlers.getItem(fruit);

    val crop = CROP_RECIPES.create("mmbi:croptopia/" + tree[0] + "_sapling", saplingItem, BracketHandlers.getBlockState(sapling), 4000, "dirt");

    crop.addDrop(BracketHandlers.getItem(tree[1]), 0.5);
    crop.addDrop(<item:minecraft:stick>, 0.1, 1, 2);
    crop.addDrop(fruitItem, 0.9);
    crop.addDrop(fruitItem, 0.05, 1, 2);
    crop.addDrop(saplingItem, 0.05);
}