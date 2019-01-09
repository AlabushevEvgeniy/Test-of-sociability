class ResultPrinter
  def print_status(test)

    puts "Вы набрали #{test.ball_answers} баллов"

    case test.ball_answers
    when >= 30 then test.results[0]
    when >= 25 && <= 29 then test.results[1]
    when >= 19 && <= 24 then test.results[2]
    when >= 14 && <= 18 then test.results[3]
    when >= 9 && <= 13 then test.results[4]
    when >= 4 && <= 8 then test.results[5]
    when <= 3 then test.results[6]
    end
  end
end
