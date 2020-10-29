#class variables aren't class scoped they are class hierarchy scoped

class Car
    @@car_count = 0
    def self.car_count=(n)
        @@car_count += n
    end

    def self.car_count 
        @@car_count 
    end
    
end

class HybridCar < Car
    @@car_count = 0
    def self.car_count=(n)
        @@car_count += n
    end
end

Car.car_count=(1)
p Car.car_count 

HybridCar.car_count=(4)
p Car.car_count 

p HybridCar.car_count



class Animal
    @@animal_count = 0

    def initialize
        self.class.animal_count_instance += 1
    end

    def self.animal_count=(n)
        @@animal_count += n
    end

    def self.animal_count
        @@animal_count
    end

    def self.animal_count_instance=(n)
        @animal_count = n
        puts "I've been called Animla_count_instance #{@animal_count}"
    end

    def self.animal_count_instance
        @animal_count_instance ||= 0
    end


end

class Person < Animal
end

puts "Animals"
Animal.animal_count=(1)
p Animal.animal_count
puts
Person.animal_count=(4)
p Animal.animal_count
puts 
p Animal.animal_count_instance
Animal.animal_count_instance=(1)
p Animal.animal_count_instance
my_animal = Animal.new
p Animal.animal_count_instance
# puts 
# Person.animal_count_instance=(4)
# p Person.animal_count_instance
# p Animal.animal_count_instance


