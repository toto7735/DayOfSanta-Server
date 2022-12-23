# AT AS PIG

execute as @e[tag=sleigh,type=armor_stand,limit=1,sort=nearest] at @s rotated as @p if block ^ ^ ^0.5 #flyables positioned ~ ~0.2 ~ run tp ^ ^ ^1

execute positioned ^ ^ ^5 as @e[tag=sleigh_left,type=mule,limit=1,sort=nearest] rotated as @p if block ^ ^ ^5.5 #flyables positioned ~ ~0.2 ~ run tp ^-1 ^ ^2
execute positioned ^ ^ ^5 as @e[tag=sleigh_right,type=mule,limit=1,sort=nearest] rotated as @p if block ^ ^ ^5.5 #flyables positioned ~ ~0.2 ~ run tp ^1 ^ ^2

#playsound minecraft:entity.horse.step_wood player @a ~ ~ ~ 10 1

execute at @e[tag=sleigh,tag=new,type=pig,sort=nearest,limit=1] positioned ^ ^ ^5 as @e[tag=sleigh,sort=nearest,limit=2] run data modify entity @s Leash set from entity @e[tag=sleigh,tag=new,type=pig,sort=nearest,limit=1]
