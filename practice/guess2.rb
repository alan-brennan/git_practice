code = "1224" #(rand(8999) + 1000).to_s
puts "the code is: #{code}"

print "Take a guess at the code: "
input = gets.chomp
output = ""

unless input == code 
  
  input.chars.each_with_index do |val, index|
    if code.include?(val)
       val == code[index]? output << "X" : output << "x"
    end 
  end 

end

puts output.chars.sort.to_s
