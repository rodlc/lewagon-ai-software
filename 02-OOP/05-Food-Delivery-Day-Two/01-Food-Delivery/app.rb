require_relative 'app/repositories/meal_repository'
require_relative 'app/controllers/meals_controller'

require_relative 'app/repositories/customer_repository'
require_relative 'app/controllers/customers_controller'

require_relative 'app/repositories/employee_repository'
require_relative 'app/controllers/sessions_controller'

require_relative 'router'

meals_csv_file = File.join(__dir__, './data/meals.csv')
meals = MealRepository.new(meals_csv_file)
meals_controller = MealsController.new(meals)

customers_csv_file = File.join(__dir__, './data/customers.csv')
customers = CustomerRepository.new(customers_csv_file)
customers_controller = CustomersController.new(customers)

employees_csv_file = File.join(__dir__, './data/employees.csv')
employees = EmployeeRepository.new(employees_csv_file)
sessions_controller = SessionsController.new(employees)

router = Router.new(meals_controller, customers_controller, sessions_controller)

# Start the app
router.run
