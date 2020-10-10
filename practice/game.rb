puts "What's your favorite language?"
language = gets.chomp

case language
 when language == "Ruby" then puts "Ruby is great for web apps!"
 when language == "Python" then puts "Python is great for science."
 when language == "JavaScript" then puts "JavaScript makes websites awesome."
 when language == "HTML" then puts "HTML is what websites are made of!"
 when language == "CSS" then puts "CSS makes websites pretty."
 else puts "nope"
end