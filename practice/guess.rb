code = "1234" #(rand(8999) + 1000).to_s
puts "the code is: #{code}"

print "Take a guess at the code: "
input = gets.chomp
guesses = 0
while input != code
  outputX = ""
  outputx = ""

  common = code.chars & input.chars
  common.each do |char|
    #all indexes of that char in code
    code_indexes = code.chars.map {|x| code.chars.index(char)}
    p "1: char is #{char} and code_indexes is #{code_indexes}"  
    #code_indexes.select! {|x| code.chars[x] == char}
    #p "2: char is #{char} and code_indexes is #{code_indexes}" 
    #all indexes of that char in input
    input_indexes = input.chars.map {|x| input.chars.index(char)}
    p "1: char is #{char} and input_indexes is #{input_indexes}" 
    #input_indexes.select! {|x| input.chars[x] == char}
    #p "2: char is #{char} and input_indexes is #{input_indexes}" 

    #if any indexes of the char match, then the char must be in the correct place
    if (code_indexes & input_indexes).length > 0 then outputX += "X" end
  end
  outputx =  "x" * (common.length - outputX.length)

  guesses += 1
  puts outputX + outputx
  print "Take a guess at the code: "
  input = gets.chomp
end

puts "Well Done! you took #{guesses} guesses!"