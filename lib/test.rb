class Test
  attr_reader :ball_answers, :questions

  def initialize(questions_from_files, results_from_files)
    @questions = questions_from_files
    @results_array = results_from_files
    @ball_answers = 0
  end

  # да - 2 балла, нет - 0 баллов, иногда - 1
  def calculate_results(ball_answers)
    if ball_answers >= 30
      @results_array[0]
    elsif ball_answers >= 25 and ball_answers <= 29
      @results_array[1]
    elsif ball_answers >= 19 and ball_answers <= 24
      @results_array[2]
    elsif ball_answers >= 14 and ball_answers <= 18
      @results_array[3]
    elsif ball_answers >= 9 and ball_answers <= 13
      @results_array[4]
    elsif ball_answers >= 4 and ball_answers <= 8
      @results_array[5]
    elsif ball_answers <= 3
      @results_array[6]
    end
  end

  def reverse_logic_item?(item)
    (item == questions[4] || item == questions[9] || item == questions[10])
  end

  def add_balls(number)
    @ball_answers += number
  end
end
