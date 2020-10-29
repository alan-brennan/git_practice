def my_method(n)
  puts block_given?
  if block_given?
    yield(n)
  end
end

n = 0
print my_method(n) { "n is #{n} and Hello" }
puts

print (my_method(n) do  
  #puts n
  "Hello" 
end)

p my_method(n)


