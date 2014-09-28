class Die

	def initialize
		roll
	end

	def roll
		@numberShowing = 1 + rand(6)
	end

	def showing
		number = @numberShowing
	end

	def cheat number
		@numberShowing = number
	end

end


begin
	print 'Do you want to roll the dice? ' 
	reply = gets.downcase.chomp

	if reply == 'yes'
		die = Die.new

		begin
			print 'Do you want to cheat? '
			ans = gets.downcase.chomp

			if ans == 'yes'

				begin
					print 'Enter the number side you want: '	
					x = gets.chomp
					n = Integer(x)

						if n < 7 and n > 0
							puts 'You rolled a: ' + die.cheat(n).to_s
							break

						else
							puts 'Only numbers between 1 and 6!'
						end
						
				rescue
					puts 'Only whole numbers!'
					retry
				end until n < 7 and n > 0

				break
				
			elsif ans != 'yes' and ans != 'no'
				puts 'Only \'yes\' or \'no\' please :P'

			else
				y = die.showing
				puts "You rolled a: " + y.to_s
			end

		end until ans == 'no'

	elsif reply == 'no'
		puts 'Fine be that way! Bye!!'
	
	else 
		puts 'Only \'yes\' or \'no\' please :P'
	end

end until reply == 'no'

