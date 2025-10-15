def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  race_array.each do |horse|
    horse_index = race_array.index(horse)
    horse_number = race_array.index(horse) + 1
    horse_new = horse_number.to_s.concat("-#{horse}!")
    race_array[horse_index] = horse_new
  end
  race_array.sort!.reverse!
end
