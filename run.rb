# frozen_string_literal: true

 require_relative 'lib/phone'

 loop do
  puts 'Enter your phone number'

  phone = Phone.new(gets.chomp)

  if phone.valid?
    puts phone.operator
    puts "corect phone number #{phone.format}"
  else
    puts 'Please enter correct phone number'
  end

  break if phone.valid?
end
