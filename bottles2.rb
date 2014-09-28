puts 'Would you like to hear a song?'
reply = gets.chomp

until reply.downcase == 'yes' or reply.downcase =='no'
	puts 'Only \'yes\' or \'no\' please :P'
	puts 'Would you like to hear a song?'
	reply = gets.chomp
end

if reply.downcase == 'yes'
	puts 'Yay! Let\'s sing bottles of beer on the wall!'
	puts 'How many bottles do you wish to start with?'
elsif reply.downcase == 'no'
		puts 'Too bad, I\'m singing one anyways.'
		puts 'Bottles of beer on the wall!'
		puts 'How many bottles do you wish to start with?'
end

reply = gets.chomp

until reply.to_i < 101 and reply.to_i > 0
	puts 'It has to be a number between 1-100!'
	puts 'How many bottles do you wish to start with?'
	reply = gets.chomp
end

beer = reply.to_i

(0...beer).each {|x|
	leftovers = beer - x
	bottles = leftovers.to_s
	puts bottles + ' bottles of beer on the wall ' + bottles + ' of beer! You take one down and pass it around, ' + 
		(leftovers - 1).to_s + ' bottles of beer left on the wall!'
}

puts 'Now all the bottles are gone!'