DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

MENUS = {
  "Cheesy Combo" => ["Cheese Burger", "Sweet Potatoes", "Lemonade"],
  "Veggie Combo" => ["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan Combo" => ["Vegan Burger", "Salad", "Lemonade"]
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  order_calories = 0
  orders.each do |item|
    if DISHES_CALORIES.include?(item)
      order_calories += DISHES_CALORIES[item]
    else
      order_calories += poor_calories_counter(MENUS[item][0], MENUS[item][1], MENUS[item][2])
    end
  end
  order_calories
end

# puts calories_counter(["Veggie Combo", "Salad", "Vegan Combo", "Lemonade"])
