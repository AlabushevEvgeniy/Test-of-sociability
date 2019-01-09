require_relative "./lib/test"
puts "Это тест на общительность. Сейчас мы проверим,насколько вы любите людей)))"
sleep 1
puts "Ответьте, пожалуйста на следующие вопросы: (варианты ответа: y(es), n(o), s(ometimes)"

questions_from_file = File.new("#{__dir__}/data/questions.txt", "r:UTF-8").readlines
results_from_files = File.new("#{__dir__}/data/results.txt", "r:UTF-8").readlines

test = Test.new(questions_from_file, results_from_files)
questions = test.questions
#balls = test.ball_answers

questions.each do |item|
  puts item
  # user_input = nil
  user_input = STDIN.gets.chomp
  while user_input != "y" && user_input != "n" && user_input != "s"
    puts "Введите y(es), n(o), или s(ometimes)"
    user_input = STDIN.gets.chomp.downcase
  end

  if user_input == "s"
    #balls += 1
    test.add_balls(1)
    next
  end

  if test.reverse_logic_item?(item)
    if user_input == "n"
      #balls += 2
      test.add_balls(2)
    end
  else
    if user_input == "y"
      #balls += 2
      test.add_balls(2)
    end
  end
end

puts "Вы набрали #{test.ball_answers} баллов"
puts test.calculate_results(test.ball_answers)


