wordlist = []
sortedwords = []

puts 'Enter however many words, and this will sort them alphabetically for you.'
puts 'Just hit enter on an empty line when you\'re done.'

until wordlist.include?('') == true
		
	wordlast = gets.chomp
	wordlist.push wordlast

	begin Integer(wordlast) == true
		puts
		puts 'Please only enter words.'
		puts
		wordlist.pop	
	rescue ArgumentError
		
	end	

end

wordlist.pop
puts 'Here are your words in alphabetically order:'

until wordlist.empty? == true
x = wordlist.first
	if wordlist.min_by {|n| n.downcase} == x
		sortedwords.push x
		wordlist.shift
	else
		wordlist.rotate!
	end
end 

puts sortedwords