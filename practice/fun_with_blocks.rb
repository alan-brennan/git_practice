def my_method(&my_block)
    puts "in my meyhod"
    my_block.call("param 1", "param 2")
    puts "back in my method"
end

my_method do |param1, param2|
    puts "In my bloc"
    puts param1
    puts param2
end



