class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity=1)
  self.total += price * quantity
  quantity.times {self.items << title}
  self.last_transaction = price * quantity
end

def apply_discount
  #a *= b == a = a * b
  #self.total = self.total * (100-self.discount.to_f)/100
  self.total *= (100-self.discount.to_f)/100
  if self.discount == 0
    "There is no discount to apply."
  else
     "After the discount, the total comes to $#{self.total.to_i}."
   end
end

def void_last_transaction
  self.total = self.total - self.last_transaction
  end

end
