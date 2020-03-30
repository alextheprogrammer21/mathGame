require_relative 'GameLogic.rb'

class Players < GameLogic
  def initialize 
    @lives = 3;
  end

  def getLives 
    return @lives 
  end
end