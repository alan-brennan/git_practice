# def calculate_winner(input1,input2)
#     return "Its a tie" if input1 == input2 
#     winner = ""
#         if input1 == "paper" && input2 == "rock"
#           winner += "player 1"
#         elsif input1 == "rock" && input2 == "scissors"
#           winner += "player 1"
#         elsif input1 == "scissors" && input2 == "paper"
#           winner += "player 1"
#         else 
#           winner += "player 2"
#         end
#     winner
# end

# p calculate_winner("rock","paper")
# p calculate_winner("paper","scissors")
# p calculate_winner("scissors","rock") 
# p calculate_winner("rock","scissors")
# p calculate_winner("paper","rock")
# p calculate_winner("scissors","paper")




def valid_input?(item1, item2)
    valid_inputs = ["rock", "paper", "scissors"]
  
    # check that both items contain the exact string "rock", "paper" or "scissors"
    if valid_inputs.any? {|word| item1 == word} && valid_inputs.any? {|word| item2 == word}
      return true
    end
  
    false
end
  
def play_game(item1, item2)
    items = [item1, item2]
  
    if items[0] == items[1]
      puts "Tie!"
    elsif items.include?("rock") && items.include?("paper")
      puts "Paper covers rock."
    elsif items.include?("rock") && items.include?("scissors")
      puts "Rock crushes scissors."
    elsif items.include?('paper') && items.include?('scissors')
      puts 'Scissors cuts paper.'
    end
end
  
  print "Player 1 - Enter your selection: "
  player1_selected = gets.chomp.downcase
  
  print "Player 2 - Enter your selection: "
  player2_selected = gets.chomp.downcase
  
  if valid_input?(player1_selected, player2_selected)
    play_game(player1_selected, player2_selected)
  else
    puts "No cheaters! Only Rock, Paper or Scissors are allowed."
  end
