summon zombie ~ ~ ~ {Silent:1b,Team:"santa",DeathLootTable:"christmas:sack",IsBaby:1b,Tags:["elf","new"],CustomName:'{"text":"Santa\'s Elf","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b,tag:{CustomModelData:330501}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:30}]}
scoreboard players set @e[type=zombie,tag=new,tag=elf,sort=nearest,limit=1] elf_laugh 0
tag @e[type=zombie,tag=new,tag=elf,sort=nearest,limit=1] remove new
playsound minecraft:entity.witch.celebrate player @a ~ ~ ~ 10 1.8
kill