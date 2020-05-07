class CashRegister
  
  attr_reader :discount, :items
  attr_accessor :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(name, price, quantity = 1)
    @total += price*quantity
    @items << name
  end
  
  def apply_discount
    @total *= (100.0-discount)/100.0
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.round}."
  end
  
  
end
