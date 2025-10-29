require_relative "../models/employee"
require "csv"

class EmployeeRepository
  attr_accessor :next_id

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @employees = []
    @next_id = 1
    load_csv
  end

  def all_riders
    @employees.select { |rider| rider.rider? }
  end

  def find(id)
    @employees[id - 1]
  end

  def find_by_username(username)
    @employees.find { |employee| employee.username == username }
  end

  private

  def load_csv
    return unless File.exist?(@csv_file_path)

    CSV.foreach(@csv_file_path, headers: true, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:username] = row[:username].to_s
      row[:password] = row[:password].to_s
      row[:role] = row[:role].to_s
      @employees << Employee.new(row)
    end
    @next_id = @employees.empty? ? 1 : @employees.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["id", "username", "password", "role"]
      @employees.each do |employee|
        csv << [employee.id, employee.username, employee.password, employee.role]
      end
    end
  end
end
