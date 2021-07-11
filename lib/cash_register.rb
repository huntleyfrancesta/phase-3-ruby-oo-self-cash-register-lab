class CashRegister
    attr_accessor :total, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = 0
    end

    def add_item(item, price, quan=1)
       quan.times do
         @items << item
        @total += price
       end
       @last_transaction = price * quan
    end

    def items
        @items
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else 
            @total = @total - (@total / 100 * @discount)
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end