function starwars:config/macro/title {category:"Ships"}

  function starwars:config/macro/link {title:"Main", page:"main"}

  function starwars:config/macro/section {title:" X-Wing"}
    function starwars:config/macro/increment {title:" Max Speed", storage:"starwars:ships", nbt:"x_wing.max_speed", type:"int", value:100, callback:"starwars:config/ships"}
    function starwars:config/macro/increment {title:" Acceleration", storage:"starwars:ships", nbt:"x_wing.acceleration", type:"int", value:100, callback:"starwars:config/ships"}
    function starwars:config/macro/increment {title:" Rotational Speed", storage:"starwars:ships", nbt:"x_wing.rotational_speed", type:"int", value:100, callback:"starwars:config/ships"}

  function starwars:config/macro/section {title:" Tie Fighter"}
    function starwars:config/macro/increment {title:" Max Speed", storage:"starwars:ships", nbt:"tie_fighter.max_speed", type:"int", value:100, callback:"starwars:config/ships"}
    function starwars:config/macro/increment {title:" Acceleration", storage:"starwars:ships", nbt:"tie_fighter.acceleration", type:"int", value:100, callback:"starwars:config/ships"}
    function starwars:config/macro/increment {title:" Rotational Speed", storage:"starwars:ships", nbt:"tie_fighter.rotational_speed", type:"int", value:100, callback:"starwars:config/ships"}

  function starwars:config/macro/section {title:" Delta 7 Aethersprite"}
    function starwars:config/macro/increment {title:" Max Speed", storage:"starwars:ships", nbt:"aethersprite.max_speed", type:"int", value:100, callback:"starwars:config/ships"}
    function starwars:config/macro/increment {title:" Acceleration", storage:"starwars:ships", nbt:"aethersprite.acceleration", type:"int", value:100, callback:"starwars:config/ships"}
    function starwars:config/macro/increment {title:" Rotational Speed", storage:"starwars:ships", nbt:"aethersprite.rotational_speed", type:"int", value:100, callback:"starwars:config/ships"}

function starwars:config/macro/end