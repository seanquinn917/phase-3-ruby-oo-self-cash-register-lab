
class CashRegister
    attr_accessor  :total, :discount

        def initialize(discount = nil)
            @total = 0
            @discount = discount
        end

        def total 
            @total 
        end

        def add_item(title, price, quantity= 1)
          @total +=  price * (quantity || 1)
        end

        def apply_discount(discount)
            if discount == 0 
              return "There is no discount to apply."
            end
          
            @total = price - (price * discount) 
            return "After the discount, the total comes to $#{self.total}."
          end
          
end