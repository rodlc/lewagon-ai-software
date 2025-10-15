require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/3.3.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/3.3.5/String.html#method-i-chomp

puts "Type a student name:"
student_alpha = gets.strip
puts "Type another student name or press enter to finish:"
students_list = [student_alpha]
student = gets.strip
while student.strip != ""
  students_list << student
  puts "Type another student name or press enter to finish:"
  student = gets.strip
end
puts "Congratulations! Your Wagon has #{students_list.count} students:"
if students_list.one?
  puts student_alpha
elsif students_list.count == 2
  students_sorted = wagon_sort(students_list)
  puts "#{students_sorted[0]} and #{students_sorted.last}"
else
  students_sorted = wagon_sort(students_list)
  last_student = students_sorted.pop
  puts "#{students_sorted.join(', ')} and #{last_student}"
end

# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
