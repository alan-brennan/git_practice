require 'byebug'

class Car

    @@cars = 0
    @total_count = 0
    puts "car class initialised"

    def self.cars
        @@cars
    end

    def self.cars=(n)
        @@cars += n
    end

    def self.total_count
        @total_count #||= 0
    end

    def self.total_count=(n)
        puts "in total_count=(n) and n is #{n}"
        @total_count = n
    end

    def initialize
        puts "In initialize and self is #{self.class}"
        @@cars += 1
        self.class.total_count += 2
        puts "total_count = #{self.class.total_count}"
        
    end

    def my_car_method
        puts "self is #{self.class}"
    end
    
end

class Hybrid < Car
    @total_count = 0
    puts "hybrid class initilailies "
end


class Electric < Car
    
    puts "Electric class"
end

my_car = Car.new 
my_car1 = Car.new 
puts 
p Car.total_count

#puts
#my_hybrid = Hybrid.new 
#p Hybrid.total_count
#my_hybrid2 = Hybrid.new 
#p Hybrid.total_count
#p Car.total_count
# Car.cars=(1)
# p Car.cars 
# puts 

# p Car.total_count
# my_car = Car.new 
# p Car.total_count 
# puts 
# Hybrid.cars=(2)
# p Car.cars
# puts 
# my_hybrid1 =  Hybrid.new 
# my_hybrid2 =  Hybrid.new 

# p Hybrid.total_count
# p Car.total_count

# p Car.cars 
# p Hybrid.cars 

# puts 'Hybrid1'
# my_hybrid1.my_car_method
# my_car.my_car_method

# p Car.class_variables
# p Hybrid.class_variables

# p Car.instance_variables
# p Hybrid.instance_variables

# p Car.ancestors
# p Hybrid.ancestors