class CashRegister
  
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    @total += price*quantity
  end
  
  def apply_discount
    @total *= (100.0-discount)/100.0
    puts "After the discount, the total comes to $#{total}."
  end
end
