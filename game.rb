require './players'
require './questions'

class Game

  def initialize()
    puts "========================================"
    puts "| Welcome to the two player math game! |"
    puts "========================================"
    @gameEnd = false;
    player1 = Players.new("P1")
    player2 = Players.new("P2")
    current = player1
    question = Questions.new

    # ask questions, check answer
    while (!@gameEnd)
      question.ask_question
      question.check_answer
      
      # Checks if the answer is correct and updates lives
      if !question.correct
        current.lose_life
        puts "Seriously? No!" 
        puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      else 
        puts "YES! You are correct."  
      end

      # Ends the game when player hits 0 lives
      if current.lives == 0
        puts "============ GAME OVER ==============="
        puts "|      #{current.name} has lost the game!         |"
        puts "=========== GOOD BYE! ================"
        gameEnd
      end    
      

      # switching between players for questions
      question = Questions.new
      if current == player1
        current = player2
      else 
        current = player1
      end

    end
  end

  def gameEnd
    @gameEnd = true;
  end

end


