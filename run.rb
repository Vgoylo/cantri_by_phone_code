# frozen_string_literal: true

puts 'Enter your phone number'

phone = gets.chomp

if phone.match?(/(\+375|80)(29|44|33|25)\d{3}\d{2}\d{2}/)
  result = 'Life' if phone.match?(/(\+375|80)(25)\d{7}/)

  result = 'Mts' if phone.match?(/(\+375|80)(29)(2|4|6|8)\d{6}/) || phone.match?(/(\+375|80)(33)(6|9)\d{6}/)

  result = 'Velcome' if phone.match?(/(\+375|80)(44)\d{3}\d{2}\d{2}/) || phone.match?(/(\+375|80)(29)(1|3|5|7|9)\d{6}/)
  
else
  puts 'Please enter correct phone number'
end

puts result
