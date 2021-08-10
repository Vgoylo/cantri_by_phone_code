# frozen_string_literal: true
require_relative 'src/phone'

puts 'Enter your phone number'

phone = Phone.new(gets.chomp)

if phone.valid?
  puts phone.operator
else
  puts 'Please enter correct phone number'
end

