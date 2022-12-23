# Sack of presents
execute as @a[scores={item_uses=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:330502}}}] at @s run function christmas:sack


# Elves
execute as @e[tag=summon_elf] at @s run function christmas:summon_elf
team join santa @a[tag=santa,team=!santa]
team leave @a[tag=!santa,team=santa]


scoreboard players add @e[tag=elf,scores={elf_laugh=..73}] elf_laugh 1
execute as @e[tag=elf,scores={elf_laugh=72..}] at @s run playsound minecraft:entity.witch.celebrate player @a ~ ~ ~ 10 1.8
scoreboard players set @e[tag=elf,scores={elf_laugh=72..}] elf_laugh 0


# Sleigh

execute as @e[tag=summon_sleigh] at @s run function christmas:summon_sleigh 

execute as @e[tag=sleigh] at @s if block ~ ~-0.2 ~ #flyables run tp ~ ~-0.2 ~


execute as @a[predicate=christmas:riding] at @s run function christmas:sleigh/riding
    
execute as @e[tag=psaddle,predicate=!christmas:not_riding] at @s run function christmas:sleigh/not_riding


execute as @e[tag=sleigh_left] at @s if block ~ ~-0.2 ~ #flyables run particle dust 0.831 0.831 0.831 2 ^ ^ ^-0.7 0 0 0 0 5
execute as @e[tag=sleigh_right] at @s if block ~ ~-0.2 ~ #flyables run particle dust 0.831 0.831 0.831 2 ^ ^ ^-0.7 0 0 0 0 5

execute as @e[tag=sleigh_left] at @s unless entity @e[tag=sleigh,distance=..10,type=pig] run tp ~ -1000 ~
execute as @e[tag=sleigh_right] at @s unless entity @e[tag=sleigh,distance=..10,type=pig] run tp ~ -1000 ~

execute as @e[tag=sleigh,type=armor_stand] at @s unless entity @e[tag=sleigh,type=pig,distance=..1.1] run kill @e[type=item,nbt={Item:{id:"minecraft:saddle"}},sort=nearest,limit=1]
execute as @e[tag=sleigh,type=armor_stand] at @s unless entity @e[tag=sleigh,type=pig,distance=..1.1] run kill


# Bazooka
execute as @a unless entity @s[scores={launch_delay=-1..}] run scoreboard players set @s launch_delay 0
scoreboard players add @a[scores={launch_delay=..21}] launch_delay 1

execute as @e[tag=candycane_rpg] at @s run function christmas:bazooka/flight

execute as @a[scores={item_uses=1..,launch_delay=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:330506}},Inventory:[{id:"minecraft:flint",tag:{CustomModelData:330507}}]}] at @s run function christmas:bazooka/load_launcher
execute as @a[scores={item_uses=1..,launch_delay=10..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:330508}}}] at @s run function christmas:bazooka/launch

# Generic

scoreboard players set @a item_uses 0