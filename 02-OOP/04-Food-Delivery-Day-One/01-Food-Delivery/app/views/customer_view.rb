# TODO: Define your View class here, to display elements to the user and ask them for their input

class CustomerView
  def display_list(customers)
    if customers.empty?
      puts "No customers in your file for the moment"
    else
      customers.each do |customer|
        puts "#{customer.id}. #{customer.name} : #{customer.address}"
      end
    end
  end

  def ask_for(stuff)
    puts "What is #{stuff}?"
    print "> "
    gets.chomp
  end
end
