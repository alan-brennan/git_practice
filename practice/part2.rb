puts "Enter your name"

name = gets.chomp

birthday = "Happy Birthday"

line = 1
while line < 5 do 
    case line 
      when 1,2,4 then puts "#{birthday} to you!"
      when 3 then puts "#{birthday} dear #{name}"
    end

    line += 1
end

