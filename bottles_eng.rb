def englishNumber numbers
  begin 
    number = Integer (numbers)
  if number < 0 
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  if number > 1000000000000
    return 'Please enter a number 1000000000000 or less.'
  end

  numString = '' 

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left  = number
write = left/1000000000000
left = left - write*1000000000000
if write > 0
  trillions = englishNumber write
  numString = numString + trillions + ' trillion'

  if left > 0
    numString = numString + ' '
  end
end

write = left/1000000000
left = left - write*1000000000
if write > 0
  billions = englishNumber write
  numString = numString + billions + ' billion'

  if left > 0
    numString = numString + ' '
  end
end

write = left/1000000
left = left - write*1000000
if write > 0
  millions = englishNumber write
  numString = numString + millions + ' million'

  if left > 0
    numString = numString + ' '
  end
end

write = left/1000
left = left - write*1000

if write > 0
  thousands = englishNumber write
  numString = numString + thousands + ' thousand'

  if left > 0
    numString = numString + ' '
  end
end

  write = left/100          
  left  = left - write*100 

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10       
  left  = left - write*10 

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left 
  left  = 0    

  if write > 0
    numString = numString + onesPlace[write-1]
  end
  numString
  rescue 
    print 'Only put whole numbers without any commas please.'
end
end

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

until reply.to_i < 1000000000000 and reply.to_i > 0
	puts 'It has to be a number between 1-1000000000000!'
	puts 'How many bottles do you wish to start with?'
	reply = gets.chomp
end

beer = reply.to_i

(0...beer).each {|x|
	leftovers = beer - x
	bottles = englishNumber(leftovers)
	puts bottles.capitalize + ' bottles of beer on the wall ' + bottles + ' of beer! You take one down and pass it around, ' + 
		englishNumber(leftovers - 1) + ' bottles of beer left on the wall!'
	}

puts 'Now all the bottles are gone!'

