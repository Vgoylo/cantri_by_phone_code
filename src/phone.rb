class Phone 

  attr_reader :phone

  def initialize (phone)
    @phone = phone
  end

  def operator

    result = 'Life' if life?

    result = 'Mts' if mts?

    result = 'Velcome' if velcome?
    
    result
  end

  def valid?
    phone.match?(/(\+375|80)(29|44|33|25)\d{3}\d{2}\d{2}/)  
  end

  private

  def life?
    phone.match?(/(\+375|80)(25)\d{7}/)
  end

  def mts?
    phone.match?(/(\+375|80)(29)(2|4|6|8)\d{6}/) || phone.match?(/(\+375|80)(33)(6|9)\d{6}/)
  end

  def velcome?
    phone.match?(/(\+375|80)(44)\d{3}\d{2}\d{2}/) || phone.match?(/(\+375|80)(29)(1|3|5|7|9)\d{6}/)
  end

end
