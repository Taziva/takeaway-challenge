class Order
  def initialize
    @total_order = []
    @total = 0
  end

  def add_to_order(dish)
    @total_order << dish
  end
end
