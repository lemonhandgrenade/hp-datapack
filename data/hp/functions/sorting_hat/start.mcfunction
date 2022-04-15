function hp:sorting_hat/setup
scoreboard players set @s quizQuestion 0
scoreboard players set @s quizTrigger 0


scoreboard players set @s gryffindorQuiz 0
scoreboard players set @s slytherinQuiz 0
scoreboard players set @s ravenclawQuiz 0
scoreboard players set @s hufflepuffQuiz 0

tag @s[tag=!housed] add sortingHat
item modify entity @s[tag=!housed] armor.head hp:binding

advancement revoke @s only hp:sorting_hat