def line_to_print(line, name)
    birthday = "Happy Birthday"
    case line 
      when 1,2,4 then return "#{birthday} to you!"
      when 3 then return "#{birthday} dear #{name}"
    end
    
end 

puts "Enter your name"

name = gets.chomp

#puts line_to_print(1,"alan")

line = 1
while line < 5 do 
    puts line_to_print(line, name)
    line += 1
end
