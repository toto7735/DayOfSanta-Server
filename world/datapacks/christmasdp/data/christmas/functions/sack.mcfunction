loot spawn ^ ^1 ^2 loot christmas:sack
playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 10 1.2


particle dust 0.922 0.286 0.263 3 ^ ^1 ^2 0.01 0.01 0.01 0 10
particle dust 0.91 0.922 0.263 1 ^ ^1.1 ^1.6 0.01 0.25 0.01 0 10
particle dust 0.91 0.922 0.263 1 ^0.2 ^1.4 ^1.6 0.01 0.01 0.01 0 5
particle dust 0.91 0.922 0.263 1 ^-0.2 ^1.4 ^1.6 0.01 0.01 0.01 0 5
scoreboard players set @s item_uses 0

execute if entity @s[gamemode=!creative,gamemode=!spectator] run item replace entity @s weapon.mainhand with air