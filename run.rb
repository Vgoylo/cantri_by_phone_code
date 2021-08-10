puts 'Enter your phone number'

phone = gets.chomp

if phone.match?(/(\+375|80)(29|44|33|25)\d{3}\d{2}\d{2}/) 
  if phone.match?(/(\+375|80)(25)\d{3}\d{2}\d{2}/) 
    puts 'Life'
  end

  if phone.match?(/(\+375|80)(29)(2|4|6|8)\d{6}/) 
    puts 'Mts'
  end

  if phone.match?(/(\+375|80)(44)\d{3}\d{2}\d{2}/) 
    puts 'Velcome'
  end

else
  puts 'Please enter correct phone number'
end
