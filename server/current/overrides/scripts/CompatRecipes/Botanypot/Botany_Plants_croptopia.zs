import mods.botanypots.ZenCrop;
import crafttweaker.api.BracketHandlers;

val CROP_RECIPES = <recipetype:botanypots:crop>;

val PLANTS = [
    "artichoke", "asparagus",  "barley", "basil", "bellpepper", "blackbean", "blackberry", "blueberry", "broccoli",
    "cabbage", "cantaloupe", "cauliflower", "celery", "chile_pepper", "coffee", "corn", "cranberry", "cucumber", "currant",
    "eggplant", "elderberry", "garlic", "ginger", "grape", "greenbean", "greenonion", "honeydew", "hops",  "kale",
    "kiwi", "leek", "lettuce", "mustard", "oat", "olive", "onion", "peanut", "pepper", "pineapple", "radish",
    "raspberry", "rhubarb", "rice", "rutabaga", "saguaro", "soybean", "spinach", "squash", "strawberry", "sweetpotato",
    "tea", "tomatillo", "tomato", "turmeric", "turnip", "vanilla", "yam", "zucchini"
];

for plant in PLANTS {
    val seed = BracketHandlers.getItem("croptopia:" + plant + "_seed" + (plant == "vanilla" ? "s" : ""));
    val crop = CROP_RECIPES.create("mmbi:croptopia/" + plant, seed, BracketHandlers.getBlockState("croptopia:" + plant + "_crop:age=7"), 2000, "dirt");
    
    val result = BracketHandlers.getItem("croptopia:" + plant + (plant == "coffee" ? "_beans" : ""));
    crop.addDrop(result, 1, 1, 3);
    crop.addDrop(seed, 0.5);
}