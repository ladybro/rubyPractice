puts "Guess a number between 1 and 10"
#guess = gets.chomp
guess = 9
guess = guess.to_i
random = rand(10).to_s
puts "You guessed " + guess.to_s + " The random number was " + random
