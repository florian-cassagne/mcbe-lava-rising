# ------------------
# Loops/Commands Executer
# ------------------
scoreboard objectives add LoopExecuter dummy
scoreboard players add @s LoopExecuter 1
execute @s[scores={LoopExecuter=1}] ~ ~ ~ effect @s slowness 1 255 true
scoreboard players set @s[scores={LoopExecuter=10..}] LoopExecuter 10
execute @s ~ ~ ~ scoreboard players set @e[scores={LoopExecuter=..9}, rm=2] LoopExecuter 10
execute @s[scores={LoopExecuter=5}] ~ ~ ~8 tickingarea add ~-1 253 ~-1 ~1 255 ~1 loop_executer
execute @s[scores={LoopExecuter=6}] ~ ~ ~8 setblock ~ 255 ~ barrier
execute @s[scores={LoopExecuter=6}] ~ ~ ~8 setblock ~ 253 ~ barrier
execute @s[scores={LoopExecuter=6}] ~ ~ ~8 setblock ~-1 254 ~ barrier
execute @s[scores={LoopExecuter=6}] ~ ~ ~8 setblock ~1 254 ~ barrier
execute @s[scores={LoopExecuter=6}] ~ ~ ~8 setblock ~ 254 ~1 barrier
execute @s[scores={LoopExecuter=6}] ~ ~ ~8 setblock ~ 254 ~-1 barrier
execute @s[scores={LoopExecuter=7}] ~ ~ ~ kill @e[type=betterbedrock:loop_executer]
execute @s[scores={LoopExecuter=8}] ~ ~ ~8 summon betterbedrock:loop_executer ~ 254 ~