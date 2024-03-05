#########################################
############# By Floshox ################
#########################################


# ------------------
# Loops/Commands Executer
# ------------------

kill @e[type=betterbedrock:loop_executer]
tickingarea remove loop_executer
scoreboard players set @s LoopExecuter 1
execute @s[scores={LoopExecuter=1}] ~ ~ ~ effect @s slowness 1 255 true

