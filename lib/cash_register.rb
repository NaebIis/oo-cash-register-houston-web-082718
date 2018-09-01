
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction
    # attr_reader :total

    
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items =[] 
    end

   def add_item(title, price, number_of=1)
    self.total += (price * number_of)
    number_of.times do
    @items << title
    end
    self.last_transaction = number_of * price
   end

   def apply_discount
    if self.discount != 0
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    return "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
    end
   end

   def void_last_transaction
    self.total = self.total - self.last_transaction
   end
end