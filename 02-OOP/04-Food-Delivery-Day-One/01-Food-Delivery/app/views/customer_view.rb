# TODO: Define your View class here, to display elements to the user and ask them for their input

require_relative "../controllers/customers_controller"
require_relative "../models/customer"

class CustomerView
  def display_list(customers)
    if customers.empty?
      puts "Pas de client dans votre fichier pour le moment."
    else
      customers.each do |customer|
        puts "#{customer.id}. #{customer.name} : #{customer.address}"
      end
    end
  end

  def ask_for(stuff)
    puts "Quel est #{stuff} ?"
    print "> "
    gets.chomp
  end
end
