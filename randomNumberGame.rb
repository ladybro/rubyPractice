=begin
 * Author: Savanna Butler (ladybro)
 * Date:   9-1-2012
 * Edited: 9-3-2012
 * Email:  neonnightlifess1@yahoo.com
=end

=begin
  * Description: Game that guesses a number between one and ten.
  * A user can enter a number between 1 and 10 or the text one to ten
  * the user will be altered if they matched the computers value and they won
  * the user looses if they do not enter a number within the given range or their
  * guess does not match the computers choice.
  * Game exits when -8 is entered by the user.
=end

words = {"one"=>1, "two"=>2, "three"=>3, "four"=>4, "five"=>5, "six"=>6, "seven"=>7, "eight"=>8, "nine"=>9, "ten"=>10}
puts "Guess a number between 1 and 10"
puts "Entering -8 will end the game"

gamesPlayed = 0
totalWins=0
chances = 5;
guess = gets.chomp
while guess !="-8"
	#guess = 2
	gamesPlayed+=1
	numGuess = guess.to_i     #new variable for guess to integer
	random = rand(99)+1
	choice = nil

	if numGuess>=1 && numGuess<=100  #To verify user can follow instructions
		choice = numGuess
		#puts "You guessed " + numGuess.to_s + " The random number was " + random.to_s
	elsif words.include?(guess)
		choice = words[guess]
		#puts "You guessed " + words[guess] + " The random number was " + random.to_s
	else
		puts "You Lose!"
	end
	if choice == random
		totalWins+= 1
		puts "Congratulations! You've won!"
	else 
		puts "You guessed incorrectly. Please try again."
	end
	puts "You have " + chances.to_s + " chances to guess a number between 1 and 100"
	
	puts "You have won " + totalWins.to_s + " out of " + gamesPlayed.to_s + " games"
	guess = gets.chomp
end