#in problem 5, with a code of '1224' and a guess of '1243' I get
#`XXxx` suggesting that all my digits are right but `3` is not. Is this done on purpose?



# Mastermind
# Raphael Adams

# Generates a random 4-digit code, each digit between 1-6

# code = Array.new(4) do |i|
#     String(rand(6) + 1)
# end
code = ["1","2","2","4"]

num_guesses = 0
guessed_it = false
input = ""


# User guesses 4-digit codes, and gets hints about whether
# the digits are correct / in the right place.

puts "MASTERMIND"
until guessed_it

  num_guesses += 1
  
  loop do
    print "[#{ num_guesses }] Enter your guess: "
    input = gets.chomp
    break if input.match?(/\A[1-6]{4}\z/)
  end
  
  current_guess = input.split("")

  if current_guess == code

    puts "Nice work! Your number of guesses was #{ num_guesses }."
    guessed_it = true

  else

    code_temp = code.clone

    (0...current_guess.length).each do |i|

      if current_guess[i] == code_temp[i]
        code_temp[i] = -1
        current_guess[i] = -1
        print "X"
      end
    
    end

    (0...current_guess.length).each do |i|
    
      current_digit = current_guess[i]
      
      if (current_digit != -1) && (code_temp.include? current_digit)
        digit_location = code_temp.index(current_digit)
        code_temp[digit_location] = -1
        current_guess[i] = -1
        print "x"
      end
    
    end

    print "\n"

  end

end