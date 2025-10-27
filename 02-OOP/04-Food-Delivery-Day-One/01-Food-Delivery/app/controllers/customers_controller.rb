#  TODO: Define your Controller Class here, to orchestrate the other classes

require_relative "../models/customer"
require_relative "../repositories/customer_repository"
require_relative "../views/customer_view"

class CustomersController
  def initialize(customer_repository)
    @customers = customer_repository
  end

  def list
    View.new.display_list(@customers.all)
  end

  def add
    customer_added = {}
    customer_added[:id] = 0
    customer_added[:name] = View.new.ask_for("le nom du client").to_s
    customer_added[:address] = View.new.ask_for("l'addresse du client").to_s
    customer = Customer.new(customer_added)
    @customers.create(customer)
  end
end
