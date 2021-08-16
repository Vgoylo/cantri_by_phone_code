# frozen_string_literal: true
require 'pry'

class Phone
  attr_reader :phone

  def initialize(phone)
    @phone = phone
  end

  def operator
    life || mts || velcome
  end

  def format
    part_1 = phone[0, 4]
    part_2 = phone[4, 2]
    part_3 = phone[6, 3]
    part_4 = phone[9, 2]
    part_5 = phone[11, 2]
    
    "#{part_1}(#{part_2})-#{part_3}-#{part_4}-#{part_5}"
  end

  def valid?
    phone.match?(/(\+375|80)(29|44|33|25)\d{3}\d{2}\d{2}$/)
  end

  private

  def life?
    phone.match?(/(\+375|80)(25)\d{7}/)
  end

  def mts?
    phone.match?(/(\+375|80)(29(2|4|6|8)|33(6|9|3))\d{6}/)
  end

  def velcome?
    phone.match?(/(\+375|80)(29(1|3|9)|44(4|5|7))\d{6}/)
  end

  def life
    'Life' if life?
  end

  def mts
    'Mts' if mts?
  end

  def velcome
    'Velcome' if velcome?
  end
end
