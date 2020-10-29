class Rainbow
  include Enumerable

  def each
    yield "red"
    yield "green"
    yield "blue"
    # yield "indigo"
    yield "violet"
  end
end

r = Rainbow.new

r.each do |color|
    puts color
end
puts 
puts r.find{ |color| color.start_with?('i')} #returns the first one found
puts "r.all?"
puts r.all? {|color| color =~ /e/} # do all contain e, returns a boolean

puts r.any? {|color| color =~ /g/} # do any contain g

puts r.one? {|color| color =~ /g/} # only one contain g
puts "r.select"
p r.select {|color| color =~ /e/} # select all containing e, using a regex
p r.grep(/e/) # select all containing e

p [1,2,3,4,5,6,7,8].find {|n| n > 5}
p [1,2,3,4,5,6,7,8].find_all {|n| n > 5}

failure = lambda {"didn't find it"}  #find takes a failure block 
                                     #which it will do if find returns false
p [1,2,3,4,5,6,7,8].find(failure) { |n| n > 100 }

p [1,2,3,4,5,6,7,8].all?() { |n| n > 0 } # returns a boolean if all elements meet the criteria
puts 
p [1,4,3,4,5,6,7,8].drop_while() { |n| n < 4 } #drops everything upto the criteria i.e everything after the first 4 is included
p [1,2,3,4,5,6,7,8].reject() { |n| n < 4 }
p [1,2,3,4,5,6,7,8].select() { |n| n > 3 }  

puts 
p r.drop_while() { |color| color != "blue" } #drops everything upto finding "blue"
puts 
p r.group_by {|color| color.size }

r.reverse_each {|color| puts color } # reverse through the array
puts 
"ABCDabcd".each_byte { |b| p b }