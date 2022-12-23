# AT AS PLAYER


item modify entity @s weapon.mainhand christmas:empty

# Shoot

tag @s add shooter 

summon armor_stand ^ ^ ^-3 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["candycane_rpg","new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:'minecraft:flint',Count:1b,tag:{CustomModelData:330507}}],Pose:{Head:[2f,2f,2f]}}

execute as @e[tag=new,sort=nearest,limit=1,tag=candycane_rpg] rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[tag=new,sort=nearest,limit=1,tag=candycane_rpg] run scoreboard players set @s flight_time 0

execute as @e[tag=new,sort=nearest,limit=1,tag=candycane_rpg] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

execute as @e[tag=new,sort=nearest,limit=1,tag=candycane_rpg] run tag @s remove new

tag @s remove shooter

playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 10 0.5
