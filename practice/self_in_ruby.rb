# puts "self is #{self}"

# def main_method
#     puts "self is #{self}"
# end

# main_method

# class MainClass
#     puts "self is #{self}"

#     def main_instance_method
#         puts "self is #{self}"
#     end

#     def self.main_class_method
#         puts "self is #{self}"
#     end
# end

# class InheritMainClass < MainClass
# end

# c = MainClass.new
# c.main_instance_method
# MainClass.main_class_method

# d = InheritMainClass.new 
# d.main_instance_method

class C
    @@v = "I'm a class variable, available to all instances of the class"
    @v = "I'm an instance variable of the class because all classes are objects and can have instance variable "
    
    def self.v 
        @v 
    end

    def v
        @@v
    end
end

my_c = C.new
p my_c.v
p C.v



#puts
#p C.get_v 


