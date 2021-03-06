class CashRegister
  
attr_accessor :discount, :total, :items, :last_transaction
    def initialize(discount = 0)
        @total = 0.0
        @discount = discount
        @items = []
        @last_transaction = 0
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            items << title
        end
        @last_transaction = price * quantity
    end

    def apply_discount
        if discount == 0
          "There is no discount to apply."
        else
          self.total *= 1 - discount/100.to_f
          "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def items 
      @items
    end

    def void_last_transaction
        self.total -= @last_transaction
    end

end
