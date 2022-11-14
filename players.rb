class Players
  attr_accessor :lives, :name

  ## initialize name and lives
  def initialize(name)
    @lives = 3
    @name = name
  end

  ## update lives
  def lose_life 
    @lives -= 1
  end

  def is_alive?
    @lives == 0
  end

end