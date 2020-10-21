# class CookBook
#     @author = ""
#     @title = ""
#     attr_accessor :title, :author
#     def initialize(title = "Alans Book", author = "Alan") 
#       @title = title
#       @author = author
#     end
  
#     def method_missing(m, *args, &blocks)
#       puts "cant handle: #{m}" 
#     end

# end

# my_book = CookBook.new

# puts my_book << "nope"
 
# my_arr = Array.new(3, "abc")
# p my_arr
# my_arr[0] << "def"
# p my_arr
# puts 
# p [1,2,3][3] 

# p Array(1)

# p %w{ alan is cool }
# p %W{ alan is cool }



def my_method( *d, a: 1,  b: 2, **c)
    puts "a is #{a}"
    puts "b is #{b}"
    puts "c is #{c}"
    puts "d is #{d}"
end

my_method(  9,9,9, b: 4, a: 3, c: 4, d: 5)
