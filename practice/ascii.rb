# print "Enter a number: "
# number = gets.chomp.to_i

# row = 1

# while row <= number
#   (number - row).times { print " " }
#   row.times { print "* " }
#   puts #print "\n"
#   row += 1
# end

code = "1234"
input = "3456"
code_indexes = []
common = code.chars & input.chars

p common #3,4

common.each do |char|
 code_indexes = code.chars.map {|x| code.chars.index(char)}
 p "1: #{code_indexes}"
 code_indexes.select! {|x| code.chars[x] == char}
 p "2: #{code_indexes}"
end 

p "3: #{code_indexes}"


p code.chars.index("3")


my_code = "1234"

p my_code.chars.map {|x| my_code.chars.index("3")}