#  TODO: Define your Controller Class here, to orchestrate the other classes

require_relative "../models/order"
require_relative "../repositories/order_repository"
require_relative "../views/order_view"

class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @order_repository = order_repository
    @order_view = OrderView.new
  end

  def add
    order_added = {}
    order_added[:id] = 0
    order_added[:meal] = @meal_repository.find(@order_view.ask_for("the index of the meal").to_i)
    order_added[:customer] = @customer_repository.find(@order_view.ask_for("the index of the customer").to_i)
    order_added[:employee] = @employee_repository.all_riders[@order_view.ask_for("the index of the employee").to_i - 1]
    order = Order.new(order_added)
    @order_repository.create(order)
  end

  def list_undelivered_orders
    undelivered_orders = @order_repository.undelivered_orders
    @order_view.display_list(undelivered_orders)
  end

  def list_my_orders(employee)
    my_orders = @order_repository.undelivered_orders.select { |order| order.employee == employee }
    @order_view.display_list(my_orders)
  end

  def mark_as_delivered(employee)
    order_index = @order_view.ask_for("the index of the order to mark as delivered")
    employee_orders = @order_repository.undelivered_orders.select { |order| order.employee == employee }
    employee_orders[order_index.to_i - 1].deliver!
    @order_repository.save
  end
end
