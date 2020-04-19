# puts "Hello! World"
# puts "Hello! Ruby".index("Ruby")
# for i in 1..10 
  # puts "My Name"
#   puts "This is sentence number #{i}"
# end

# Guess random number 
r = rand(10)

while true
  puts "Enter your guess."
  i = gets().to_i
  if i == r
    break
  end
end
