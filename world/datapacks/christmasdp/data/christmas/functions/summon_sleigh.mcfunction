
summon armor_stand ~ ~ ~ {NoGravity:1b,DisabledSlots:4144959,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["sleigh"],Passengers:[{id:"minecraft:pig",Silent:1b,DeathLootTable:"christmas:sleigh_drops",NoAI:1b,Saddle:1b,Tags:["sleigh","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]}],ArmorItems:[{},{},{},{id:'minecraft:stone_axe',Count:1b,tag:{CustomModelData:330505}}]}

execute at @e[tag=sleigh,tag=new,type=pig,sort=nearest,limit=1] run summon mule ^1 ^ ^5 {NoGravity:1b,Invulnerable:1b,Tags:["sleigh","sleigh_right"],Leashed:1b,Attributes:[{Name:generic.movement_speed,Base:0}]}
execute at @e[tag=sleigh,tag=new,type=pig,sort=nearest,limit=1] run summon mule ^-1 ^ ^5 {NoGravity:1b,Invulnerable:1b,Tags:["sleigh","sleigh_left"],Leashed:1b,Attributes:[{Name:generic.movement_speed,Base:0}]}

execute at @e[tag=sleigh,tag=new,type=pig,sort=nearest,limit=1] positioned ^ ^ ^5 as @e[tag=sleigh,sort=nearest,limit=2] run data modify entity @s Leash set from entity @e[tag=sleigh,tag=new,type=pig,sort=nearest,limit=1]


tag @e[tag=new,tag=sleigh,type=pig] remove new

playsound minecraft:entity.horse.ambient player @a ~ ~ ~ 10 1
playsound minecraft:entity.armor_stand.hit player @a ~ ~ ~ 10 0.1

kill