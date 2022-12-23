# AT AS RPG

execute unless block ^ ^1.5 ^2 #flyables run function christmas:bazooka/boom
execute unless block ^ ^1.5 ^1 #flyables run function christmas:bazooka/boom
execute if score @s flight_time matches 2.. if entity @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,distance=..1] run function christmas:bazooka/boom
kill @s[scores={flight_time=200..}]
execute if block ^ ^1.5 ^2 #flyables if block ^ ^1.5 ^1 #flyables run tp ^ ^ ^2


particle dust 0.239 0.224 0.224 2 ^ ^1 ^-2 0 0 0 0 5

scoreboard players add @s[scores={flight_time=..200}] flight_time 1
