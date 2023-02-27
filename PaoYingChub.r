num_bot <- c(1, 2, 3)

lose <- 0
tie <- 0
win <- 0

print("Welcome to Pao Ying Chub Game !!")
print(" ---------------- How to play ----------------")
print("1 = rock, 2 = scissor, 3 = paper, 4 = quit game")
print(" ---------------------------------------------")
print("Are you ready ??")
print("Press 1 if you are ready!! :D")
start <- readLines("stdin", n = 1)
if(start != 1) {
  print("Your score: 0 point")
}
while(start == 1) {
  print("let's go!!")
  print("Enter the number to play the game 1 = rock, 2 = scissors, 3 = paper and 4 for quit game")
  user <- readLines("stdin", n = 1)
  bot <- sample(num_bot, size =1, replace = FALSE)
  if(user == bot) {
    print(paste("you :", user, "bot :", bot))
    print("------------------ Tie !! ------------------")
    tie <- tie + 1
  } else if(user == 1 & bot == 3 | 
            user == 2 & bot == 1  |
            user == 3 & bot == 2) {
    print(paste("you :", user, "bot :", bot))
    print("------------------ You Lose!! ------------------")
    lose <- lose + 1
    } else if(user == 1 & bot == 2 | 
            user == 2 & bot == 3  |
            user == 3 & bot == 1) {
    print(paste("you :", user, "bot :", bot))
    print("------------------ You Win!! ------------------")  
    win <- win + 1
  } 
    # Quit game
    else if(user == 4) {
    print(" --------- Your Score ---------")
    print(paste("Win :", win))
    print(paste("Tie:", tie))
    print(paste("Lose :", lose))
    break
  }
} 
