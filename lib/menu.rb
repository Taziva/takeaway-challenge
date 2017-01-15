require_relative 'dish'

class Menu
  attr_reader :menu
  def initialize
    @menu = []

  end

  def add_dish(name, price)
    dish = Dish.new(name.capitalize,price)
    @menu << {name: dish.name.capitalize, price: dish.price}
  end

  def print_menu
    format_menu
    @print_menu.each { |item| puts item }
  end

  private

  def format_menu
    @print_menu = []
    @menu.each_with_index do |dish, index|
      @print_menu << "#{index+1}. #{dish[:name]} #{dish[:price]}"
    end
  end
end
