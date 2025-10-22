# TODO: build your christmas list program here!

require_relative 'actions', 'scraper.rb'

p "Welcome to your Christmas gift list!"
list = [{ name: "Tie", status: false }, { name: "Ruby book", status: false }]

loop do
  p "Which action [list|add|delete|mark|quit]?"
  action = gets.chomp
  case action
  when "list"
    if list.empty?
      p "Empty list!"
    else
      list.each do |item|
        p "#{list.index(item) + 1} - #{item[:status] == true ? '[X]' : '[ ]'} #{item[:name]}"
      end
    end
  when "add"
    p "Which item would you like to add?"
    item = gets.chomp
    add(list, item)
  when "delete"
    p "Which item would you like to delete?"
    item = gets.chomp
    delete(list, item)
  when "mark"
    p "Which item have you bought?"
    item = gets.chomp
    mark(list, item)
  when "quit"
    p "Goodbye"
    break
  end
end
