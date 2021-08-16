# frozen_string_literal: true

require_relative 'lib/phone'

puts 'Enter your phone number'

phone = Phone.new(gets.chomp)

if phone.valid?
  puts phone.operator
else
  puts 'Please enter correct phone number'
end
