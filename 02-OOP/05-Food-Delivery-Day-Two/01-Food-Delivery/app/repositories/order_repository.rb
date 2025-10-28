require_relative "../models/order"
require "csv"

class OrderRepository
  attr_accessor :next_id

  def initialize(csv_file_path, meal_repository, customer_repository, employee_repository)
    @csv_file_path = csv_file_path
    @orders = []
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @next_id = 1
    load_csv
  end

  def undelivered_orders
    @orders.reject { |order| order.delivered? }
  end

  def create(order)
    order.id = @next_id
    @next_id += 1
    @orders << order
    save_csv
  end

  private

  def load_csv
    return unless File.exist?(@csv_file_path)

    CSV.foreach(@csv_file_path, headers: true, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:meal] = @meal_repository.find(row[:meal].to_s.to_i)
      row[:customer] = @customer_repository.find(row[:customer].to_s.to_i)
      row[:employee] = @employee_repository.find(row[:employee].to_s.to_i)
      row[:delivered] = (row[:delivered].to_s == "true")
      @orders << Order.new(row)
    end
    @next_id = @orders.empty? ? 1 : @orders.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["id", "meal", "customer", "employee", "delivered"]
      @orders.each do |order|
        csv << [order.id, order.meal.id, order.customer.id, order.employee.id, order.delivered]
      end
    end
  end
end
