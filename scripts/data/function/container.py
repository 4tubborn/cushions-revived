from beet import Context, Function

def beet_default(ctx: Context):
    ctx.data.functions["cushion:container/on_open"] = Function(
        "\n".join([
            "execute if score #fuel cushion.config matches 0 run return 1",
            *(f"item modify entity @s container.{num} cushion:container/open"
              for num in range(36)),
            "item modify entity @s weapon.offhand cushion:container/open",
        ])
    )

    ctx.data.functions["cushion:container/on_close"] = Function(
        "\n".join([
            "execute if score #fuel cushion.config matches 0 run return 1",
            *(f"item modify entity @s container.{num} cushion:container/close"
              for num in range(36)),
            "item modify entity @s weapon.offhand cushion:container/close",
        ])
    )

    ctx.data.functions["cushion:container/get_item"] = Function(
        "\n".join([
            "execute if score #fuel cushion.config matches 0 run return 1",
            *(f"item modify entity @s container.{num} cushion:container/close"
              for num in range(36)),
            "item modify entity @s weapon.offhand cushion:container/close",
            "advancement revoke @s only cushion:container/get_item",
        ])
    )