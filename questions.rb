class Questions

  attr_reader :number1, :number2, :answer, :userInput, :correct;

  # initialize question and answer
  def initialize()
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
    correct = false;
  end

  # ask the question
  def ask_question
    puts "What does #{number1} plus #{number2} equal?"
    @userInput = gets.chomp.to_i
  end

  # check the answer
  def check_answer
    if @answer == @userInput
      @correct = true;
    end
  end
end