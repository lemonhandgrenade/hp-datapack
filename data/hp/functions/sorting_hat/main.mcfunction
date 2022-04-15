execute if entity @s[tag=!headlock] run function hp:player/lock

scoreboard players add @s quizQuestion 0
scoreboard players add @s quizTrigger 0
scoreboard players enable @s quizTrigger

execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 0 run function hp:sorting_hat/questions/question_one
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 1 run function hp:sorting_hat/questions/question_two
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 2 run function hp:sorting_hat/questions/question_three
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 3 run function hp:sorting_hat/questions/question_four
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 4 run function hp:sorting_hat/questions/question_five
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 5 run function hp:sorting_hat/questions/question_six
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 6 run function hp:sorting_hat/questions/question_seven
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 7 run function hp:sorting_hat/questions/question_eight
execute if score @s quizTrigger matches 0 if score @s quizQuestion matches 8 run function hp:sorting_hat/questions/question_nine

execute unless score @s quizTrigger matches 0 run function hp:sorting_hat/get_answer

execute if score @s quizQuestion matches 9.. run function hp:sorting_hat/choose_house