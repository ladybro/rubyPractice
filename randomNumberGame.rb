/*
 * Author: Savanna Butler (ladybro)
 * Date:   9-1-2012
 * Edited: 9-3-2012
 * Email:  neonnightlifess1@yahoo.com
 */
words = {"one"=>1, "two"=>2, "three"=>3, "four"=>4, "five"=>5, "six"=>6, "seven"=>7, "eight"=>8, "nine"=>9, "ten"=>10}
puts "Guess a number between 1 and 10"
puts "Entering -8 will end the game"
guess = gets.chomp
while guess !="-8"
	#guess = 2
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
	puts "Guess a number between 1 and 10"
	guess = gets.chomp
end