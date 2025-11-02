# TODO: Define your View class here, to display elements to the user and ask them for their input

# app/views/order_view.rb

class OrderView
  def display_list(orders)
    orders.each do |order|
      # Un seul puts par commande, avec toutes les infos
      puts "Meal: #{order.meal.name}, Employee: #{order.employee.username}, Customer: #{order.customer.name}"
    end
  end

  def ask_for(stuff)
    puts "What is #{stuff}?"
    print "> "
    gets.chomp
  end
end
