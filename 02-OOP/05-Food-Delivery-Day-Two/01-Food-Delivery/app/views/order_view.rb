# TODO: Define your View class here, to display elements to the user and ask them for their input

class OrderView
  def display_list(orders)
    if orders.empty?
      puts "No orders in your system for the moment."
    else
      orders.each do |order|
        puts "#{order.id} - #{order.meal.name} - #{order.employee.username} - #{order.customer.name}"
      end
    end
  end

  def ask_for(stuff)
    puts "What is #{stuff}?"
    print "> "
    gets.chomp
  end
end
