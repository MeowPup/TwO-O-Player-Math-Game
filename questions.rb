class Questions
  attr_accessor :answer, :message

  def initialize()
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
    @message = "What does #{@number1} plus #{@number2} equal?"

    puts @message 
  end
end