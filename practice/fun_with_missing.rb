class CookBook
  attr_accessor :title, :author
  def initialize 
    @recipes = []
  end

  def show_recipes
    @recipes.each {|recipe| puts recipe }
  end

  def method_missing(m, *args, &blocks)
    puts "#{m} is #{@recipes.respond_to?(m)}"
    if @recipes.respond_to?(m)
        @recipes.send(m, *args, &blocks) 
    else 
      puts "cant handle: #{m}"
    end  
  end

  def add_recipe(recipe)
    @recipes << recipe 
  end

end


class Recipe
  @title = ""
  @description = ""
  @type = ""

  attr_reader :title, :type
  def initialize(title, description, type = "chicken")
    @title = title
    @description = description 
    @type = type 
  end

  def to_s
    puts "#{@title}  type:#{@type}"
  end 
  
  def show_recipe
    puts "#{@title}  type:#{@type}"
  end 

end

my_book = CookBook.new
recipe1 = Recipe.new("Chicken1", "Nice1")
recipe2 = Recipe.new("Chicken2", "Nice2")
recipe3 = Recipe.new("Chicken3", "Nice3")
recipe4 = Recipe.new("Chicken4", "Nice4")
recipe5 = Recipe.new("Beef1", "Nice beef", "beef")


puts recipe1.title

my_book.add_recipe(recipe1)
my_book.add_recipe(recipe2)
my_book.add_recipe(recipe5)

my_book.show_recipes

#my_book.show_recipe 
puts 
p my_book.select {|recipe| recipe.type == "chicken"}
puts
# my_book << recipe2 

#my_book.show_recipes