class Order

  def dishes_choice
    $dishes = {"carbonara" => 11, "bolognesa" => 9, "pesto" => 10, "sea food" => 13}
  end

  def menu_list
   puts "here is the list of the menu:"
   $dishes.each {|k, v| puts "#{k}: #{v}"}
   puts "Please choose the items you'd like to purchase by entering the name of the item followed by the quantity."
  end

  def selected_dishes
    @items ||= []
  end

  def selected_quantities
    @quantities ||= []
  end

  def order_count
    if @items == nil
      0
    else
      @items.order_count
    end
  end

  def add_dish(item, amount)
    selected_dishes << item
    selected_quantities << amount
  end

    def cost(item, amount)
    amount * $dishes[item].to_i
  end

end