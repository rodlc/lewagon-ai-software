def coach_answer(your_message)
  if your_message == "I am going to work right now!"
    ""
  elsif your_message.include?("?") == true
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message.downcase == "i am going to work right now!"
    ""
  elsif your_message.upcase == your_message
    "I can feel your motivation! #{coach_answer(your_message)}"
  else
    coach_answer(your_message)
  end
end
