puts 'Enter your phone number'

phone = gets.chomp

if phone.match?(/(\+375|80) (29|44|33|25) \d{3}-\d{2}-\d{2}/) 
else
  puts 'Please enter correct phone number'
end