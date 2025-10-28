# TODO: Define your View class here, to display elements to the user and ask them for their input

class EmployeeView
  def ask_for_username
    puts "Username?"
    print "> "
    gets.chomp
  end

  def ask_for_password
    puts "Password?"
    print "> "
    gets.chomp
  end

  def print_wrong_credentials
    puts "Wrong credentials... Try again!"
  end

  def welcome(employee)
    puts "Welcome #{employee.username}!"
  end
end
