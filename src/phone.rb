class Phone 
  attr_reader :phone

  def initialize (phone)
    @phone = phone
  end

  def operator
    life || mts || velcome
  end

  def valid?
    phone.match?(/(\+375|80)(29|44|33|25)\d{3}\d{2}\d{2}/)  
  end

  private

  def life?
    phone.match?(/(\+375|80)(25)\d{7}/)
  end

  def mts?
    phone.match?(/(\+375|80)(29|33)(2|4|6|8|9)\d{6}/)
  end

  def velcome?
    phone.match?(/(\+375|80)(29|44)(1|3|5|7|9)\d{6}|\d{3}\d{2}\d{2}/) 
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
