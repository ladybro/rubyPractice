words = {"one"=>1, "two"=>2, "three"=>3, "four"=>4, "five"=>5, "six"=>6, "seve"=>7, "eight"=>8, "nine"=>9, "ten"=>10}
puts "Guess a number between 1 and 10"
#guess = gets.chomp
guess = 2
numGuess = guess.to_i     #new variable for guess to integer
random = rand(10)
choice = nil
if numGuess>=1 && numGuess<=10   #To verify user can follow instructions
	choice = numGuess
	puts "You guessed " + numGuess.to_s + " The random number was " + random.to_s
elsif words.include?(guess)
	choice = words[guess]
	puts "You guessed " + words[guess].to_s + " The random number was " + random.to_s
else
	puts "You Lose!"
end
if choice == random
	puts "Congratulations! You've won!"
end