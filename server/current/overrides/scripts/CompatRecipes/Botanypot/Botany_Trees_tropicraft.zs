import mods.botanypots.ZenCrop;
import crafttweaker.api.BracketHandlers;

val CROP_RECIPES = <recipetype:botanypots:crop>;

val OAK = "minecraft:oak_log";
val PAPAYA = "tropicraft:papaya_log";

val TREES = [
    ["grapefruit", OAK], ["lemon", OAK], ["lime", OAK], ["orange", OAK], ["papaya", PAPAYA]
];

val mahogany = CROP_RECIPES.create("mmbi:tropicraft/mahogany_sapling", <item:tropicraft:mahogany_sapling>, <blockstate:tropicraft:mahogany_sapling>, 4000, "dirt");
mahogany.addDrop(<item:tropicraft:mahogany_log>, 0.5);
mahogany.addDrop(<item:minecraft:stick>, 0.1, 1, 2);
mahogany.addDrop(<item:tropicraft:mahogany_sapling>, 0.05);

val palm = CROP_RECIPES.create("mmbi:tropicraft/palm_sapling", <item:tropicraft:palm_sapling>, [<blockstate:tropicraft:palm_sapling>], 4000, ["dirt", "sand"]);
palm.addDrop(<item:tropicraft:palm_log>, 0.5);
palm.addDrop(<item:minecraft:stick>, 0.1, 1, 2);
palm.addDrop(<item:tropicraft:coconut>, 0.9);
palm.addDrop(<item:tropicraft:coconut>, 0.05, 1, 2);
palm.addDrop(<item:tropicraft:palm_sapling>, 0.05);

for tree in TREES {
    val fruit = BracketHandlers.getItem("tropicraft:" + tree[0]);
    val sapling = "tropicraft:" + tree[0] + "_sapling";
    val saplingItem = BracketHandlers.getItem(sapling);

    val crop = CROP_RECIPES.create("mmbi:tropicraft/" + tree[0] + "_sapling", saplingItem, BracketHandlers.getBlockState(sapling), 4000, "dirt");

    crop.addDrop(BracketHandlers.getItem(tree[1]), 0.5);
    crop.addDrop(<item:minecraft:stick>, 0.1, 1, 2);
    crop.addDrop(fruit, 0.9);
    crop.addDrop(fruit, 0.05, 1, 2);
    crop.addDrop(saplingItem, 0.05);
}