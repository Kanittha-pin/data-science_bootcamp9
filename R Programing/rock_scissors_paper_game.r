game <- function() {
  round <- 0
  player_score <- 0
  comp_score <- 0
  print("---------------------------------------------------")
  print("Welcome to Rock Paper Scissors game! ✊✋✌")
  username <- readline("What is your name: ")
  print(paste("Hello👋 ", username))
  ready <- tolower(readline("Are you ready? [y/n]: "))

  if (ready == "y") {
    while (round < 5) {
      random <- c("rock", "paper", "scissor")
      comp_hand <- sample(random, 1)
      round = round + 1
      print(paste("Round:", round))
      flush.console()
      user_input <- tolower(readline("Enter your choice (rock, paper, or scissor): "))
      print(paste("Player Choices 👩: ", user_input))
      print(paste("Computer Choices 🤖: ", comp_hand))

      if (user_input %in% c("rock", "paper", "scissor") && comp_hand %in% c("rock", "paper", "scissor")) {
        if (user_input == "rock" && comp_hand == "scissor") {
          print("Player wins this round! 😃")
          print("--------------------------------------------------------------------------------------")
          player_score = player_score + 1
        } else if (user_input == "scissor" && comp_hand == "paper") {
          print("Player wins this round! 😃")
          print("--------------------------------------------------------------------------------------")
          player_score = player_score + 1
        } else if (user_input == "paper" && comp_hand == "rock") {
          print("Player wins this round! 😃")
          print("--------------------------------------------------------------------------------------")
          player_score = player_score + 1
        } else if (comp_hand == "rock" && user_input == "scissor") {
          print("Computer wins this round! 😃")
          print("--------------------------------------------------------------------------------------")
          comp_score = comp_score + 1
        } else if (comp_hand == "scissor" && user_input == "paper") {
          print("Computer wins this round! 😃")
          print("--------------------------------------------------------------------------------------")
          comp_score = comp_score + 1
        } else if (comp_hand == "paper" && user_input == "rock") {
          print("Computer wins this round! 😃")
          print("--------------------------------------------------------------------------------------")
          comp_score = comp_score + 1
        } else if(comp_hand == "paper" && user_input == "paper" || comp_hand == "scissor" && user_input == "scissor" || comp_hand == "rock" && user_input == "rock") {
          print("It's a tie this round! 🤔")
          print("--------------------------------------------------------------------------------------")
        }
      } else {
        print("Invalid choice. Please enter rock, paper, or scissor.")
      }
    }

    if (player_score > comp_score) {
      print("🎉Congratulations! You Win! 🎉🏆")
    } else if (comp_score > player_score) {
      print("Sorry, Computer Wins! 😥")
    } else {
      print("It's a tie! ✨")
    }

    cat("Your score: ", player_score, "\n")
    cat("Computer's score: ", comp_score, "\n")
  } else {
    print("Goodbye! See you next time. 👋")
  }
}

game()
