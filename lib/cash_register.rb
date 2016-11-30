class CashRegister
  attr_accessor :total, :discount, :items, :last_price

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item_title, item_price, quantity=1)
    @total += item_price * quantity
    quantity.times do
      @items << item_title
    end
    @last_price = item_price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100-discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_price
  end
end
