$item modify entity @s weapon [{"function":"minecraft:set_custom_model_data","floats":{"values":[$(lit)],"mode":"replace_section"}},{"function":"minecraft:set_custom_data",tag:{starwars:{lit:$(lit)}}},{"function":"minecraft:set_components","components":{"minecraft:attribute_modifiers":{"modifiers":[{"type":"minecraft:attack_damage","id":"attack_damage","amount":$(attack_damage),"operation":"add_value","slot":"mainhand"},{"type":"minecraft:attack_speed","id":"attack_speed","amount":$(attack_speed),"operation":"add_value","slot":"mainhand"}],"show_in_tooltip":false}}}]