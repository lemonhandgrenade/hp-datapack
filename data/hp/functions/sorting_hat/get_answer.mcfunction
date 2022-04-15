scoreboard players set temp values 0

execute unless score temp values matches 1 if score @s quizQuestion matches 0 run function hp:sorting_hat/questions/question_one_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 1 run function hp:sorting_hat/questions/question_two_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 2 run function hp:sorting_hat/questions/question_three_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 3 run function hp:sorting_hat/questions/question_four_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 4 run function hp:sorting_hat/questions/question_five_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 5 run function hp:sorting_hat/questions/question_six_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 6 run function hp:sorting_hat/questions/question_seven_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 7 run function hp:sorting_hat/questions/question_eight_answer
execute unless score temp values matches 1 if score @s quizQuestion matches 8 run function hp:sorting_hat/questions/question_nine_answer

execute if score temp values matches 1 run scoreboard players add @s quizQuestion 1
scoreboard players set @s quizTrigger 0