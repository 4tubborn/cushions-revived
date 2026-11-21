
import json
from pathlib import Path

COLORS = (
    "white", "orange", "magenta", "light_blue",
    "yellow", "lime", "pink", "gray",
    "light_gray", "cyan", "purple", "blue",
    "brown", "green", "red", "black",
)

output = Path(__file__).parent.parent / "datapack" / "data" / "cushion" / "loot_table"
output.mkdir(parents=True, exist_ok=True)

for color in COLORS:
    name = f"{color}_cushion"
    display_name = name.replace("_", " ").title()

    item_name = {
        "translate": f"item.minecraft.{name}",
        "fallback": display_name,
    }

    data = {
        "pools": [{
            "rolls": 1,
            "entries": [{
                "type": "item",
                "name": "bat_spawn_egg",
                "functions": [{
                    "function": "set_components",
                    "components": {
                        "minecraft:entity_data": {
                            "id": "item_display",
                            "Tags": [
                                f"cushion.{color}",
                                "cushion.cushion",
                                "cushion.init",
                            ],
                            "item": {
                                "id": "recovery_compass",
                                "components": {
                                    "minecraft:item_name": item_name,
                                    "item_model": f"minecraft:block/{name}",
                                    "custom_data": {
                                        "color": color,
                                    },
                                },
                            },
                            "Rotation": [0, 0],
                        },
                        "minecraft:item_name": item_name,
                        "minecraft:item_model": f"minecraft:{name}",
                        "minecraft:max_stack_size": 16,
                        "minecraft:custom_data": {
                            "id": "cushion",
                            "color": f"{color}",
                        },
                    },
                }],
            }],
        }],
    }

    path = output / f"{name}.json"
    path.write_text(
        json.dumps(data, ensure_ascii=False, indent=4) + "\n",
        encoding="utf-8",
    )

print(f"Generated {len(COLORS)} loot tables in {output}")

dispatch = {
    "pools": [{
        "rolls": 1,
        "entries": [{
            "type": "alternatives",
            "children": [
                {
                    "type": "loot_table",
                    "value": f"cushion:{color}_cushion",
                    "conditions": [{
                        "condition": "entity_properties",
                        "entity": "this",
                        "predicate": {
                            "slots": {
                                "contents": {
                                    "predicates": {
                                        "custom_data": {
                                            "color": color
                                        }
                                    }
                                }
                            }
                        }
                    }]
                }
                for color in COLORS
            ]
        }]
    }]
}

(output / "_dispatch.json").write_text(
    json.dumps(dispatch, ensure_ascii=False, indent=4) + "\n",
    encoding="utf-8",
)

print("Generated _dispatch.json")
