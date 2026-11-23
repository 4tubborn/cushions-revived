from beet import Context, Recipe
from scripts import COLORS

def beet_default(ctx: Context):
    for color in COLORS:
        loot = ctx.data.loot_tables[f"cushion:{color}_cushion"]
        entry = loot.data["pools"][0]["entries"][0]
        components = entry["functions"][0]["components"]

        result = {
            "id": "minecraft:bat_spawn_egg",
            "components": components,
        }

        ctx.data.recipes[f"cushion:{color}_cushion"] = Recipe({
            "type": "minecraft:crafting_shaped",
            "pattern": ["ccc"],
            "key": {
                "c": f"minecraft:{color}_wool",
            },
            "result": {**result, "count": 2},
        })

        ctx.data.recipes[f"cushion:dyeing/{color}_cushion"] = Recipe({
            "type": "minecraft:crafting_shapeless",
            "ingredients": [
                "minecraft:bat_spawn_egg",
                f"minecraft:{color}_dye",
            ],
            "result": {**result, "count": 1},
        })
