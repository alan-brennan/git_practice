name = ""
guess = 0

puts "enter your name"

name = gets.chomp

number = rand(100) + 1

print number

puts "make a guess"

guess = gets.to_i

print guess

# case guess 
# when guess < number then puts "too low"
# when guess > number then puts "too high"
# when guess == number then puts "Bingo ! #{name}"
# else puts "why am I here"
# end

puts "right on #{name}" if guess == number
puts "too low!" if guess < number
puts "too high!" if guess > number 




