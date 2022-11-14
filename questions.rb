class Questions

  # initialize question and answer
  def initialize()
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
  end

  # ask the question
  def ask_question
    puts "#{name}: What does #{number1} plus #{number2} equal?"
    @userInput = gets.chomp.to_i
  end

  # check the answer
  def check_answer(playerAnswer)
    @answer == playerAnswer
  end
end