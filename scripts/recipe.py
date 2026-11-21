
import json
from pathlib import Path

ROOT = Path(__file__).parent.parent  / "datapack"
OUTPUT = ROOT / "data" / "cushion" / "recipe"
LOOT_TABLE = ROOT / "data" / "cushion" / "loot_table"

(OUTPUT / "dyeing").mkdir(parents=True, exist_ok=True)

COLORS = (
    "white", "orange", "magenta", "light_blue",
    "yellow", "lime", "pink", "gray",
    "light_gray", "cyan", "purple", "blue",
    "brown", "green", "red", "black",
)

for color in COLORS:
    loot = json.loads(
        (LOOT_TABLE / f"{color}_cushion.json").read_text(encoding="utf-8")
    )

    entry = loot["pools"][0]["entries"][0]
    components = entry["functions"][0]["components"]

    result = {
        "id": "minecraft:bat_spawn_egg",
        "count": 1,
        "components": components,
    }

    recipe = {
        "type": "crafting_shaped",
        "pattern": ["cc"],
        "key": {
            "c": f"minecraft:{color}_carpet"
        },
        "result": result,
    }

    dyeing = {
        "type": "crafting_shapeless",
        "ingredients": [
            "minecraft:bat_spawn_egg",
            f"minecraft:{color}_dye",
        ],
        "result": result,
    }

    (OUTPUT / f"{color}_cushion.json").write_text(
        json.dumps(recipe, ensure_ascii=False, indent=4) + "\n",
        encoding="utf-8",
    )

    (OUTPUT / "dyeing" / f"{color}_cushion.json").write_text(
        json.dumps(dyeing, ensure_ascii=False, indent=4) + "\n",
        encoding="utf-8",
    )

print(f"Generated {len(COLORS) * 2} recipes")
