class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    puts "Welcome to the Food Delivery App!"
    puts "           --           "
    
    # Connexion au démarrage
    @current_user = @sessions_controller.login
    
    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    if @current_user.manager?
      route_manager_action(action)
    else
      route_rider_action(action)
    end
  end

  def route_manager_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    else
      puts "Please enter a valid option (1-5)"
    end
  end

  def route_rider_action(action)
    case action
    when 1 then puts "TODO: mark as delivered"
    when 2 then stop
    else
      puts "Please enter a valid option (1-2)"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    
    if @current_user.manager?
      display_manager_tasks
    else
      display_rider_tasks
    end
  end

  def display_manager_tasks
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "5 - Stop and exit the program"
  end

  def display_rider_tasks
    puts "1 - Mark order as delivered"
    puts "2 - Stop and exit the program"
  end
end
