tellraw @a [{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",color:green},{translate:"Cushions Revived Config",color:gold,bold:true},{text:"\n"},\
{translate:"[Reset]",\
    click_event:{action:"run_command",command:"function cushion:config/set/reset"},\
},{text:"\n--------------\n"},\
{translate:"[Simple Support Detect]: %s",\
    with:[{score:{name:"#simple_support_detect",objective:"cushion.config"}}],\
    hover_event:{action:"show_text",value:{translate:"Let text and items facing to players"}},\
    click_event:{action:"run_command",command:"function cushion:config/set/simple_support_detect"},\
},{text:"\n"},\
{translate:"[Fuel]: %s",\
    with:[{score:{name:"#fuel",objective:"cushion.config"}}],\
    hover_event:{action:"show_text",value:{translate:"Let text and items facing to players"}},\
    click_event:{action:"run_command",command:"function cushion:config/set/fuel"},\
},{text:"\n"},\
]