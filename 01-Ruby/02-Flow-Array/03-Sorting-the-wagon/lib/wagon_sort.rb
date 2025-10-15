def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  if students == []
    []
  else
    students.sort_by { |student| student.downcase }
  end
end
