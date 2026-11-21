from beet import Context, Function

def beet_default(ctx: Context):
    ctx.data.functions["cushion:container/on_open"] = Function(
        "\n".join(
            f"item modify entity @s container.{num} cushion:container/open"
            for num in range(36)
        )
    )

    ctx.data.functions["cushion:container/on_close"] = Function(
        "\n".join(
            f"item modify entity @s container.{num} cushion:container/close"
            for num in range(36)
        )
    )