require_relative "../views/employee_view"

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = EmployeeView.new
  end

  def login
    username = @view.ask_for_username
    password = @view.ask_for_password
    employee = @employee_repository.find_by_username(username)
    
    # Vérifier si l'employé existe et si le password correspond
    if employee && employee.password == password
      @view.welcome(employee)
      return employee
    else
      @view.print_wrong_credentials
      login # Redemander (récursif)
    end
  end
end
