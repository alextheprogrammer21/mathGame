class GameLogic

  def getOperator(selector)
    operators = ["plus", "minus", "multipled by", "divided by"]
    @operator = operators[selector]
  end
  

  def generateQuestion
    num1 = rand(20) + 1; num2 = rand(20) + 1; selector = rand(4);

    getOperator(selector)
    puts "What does #{num1} #{@operator} #{num2} equal?"
    
    if selector == 0 
      @answer = num1+num2;
    end
    if selector == 1
    @answer = num1-num2;
    end
    if selector == 2
    @answer = num1*num2;
    end
    if selector == 3
    @answer = num1 / num2.to_f;
    end
  end

  def answerQuestion 
    playerAnswer = gets

    if playerAnswer == @answer 
      puts "Correct";
    else
      puts "Incorrect. The correct answer is #{@answer}";
      @lives -= 1;
    end
  end
end

class Players < GameLogic
  def initialize 
    @lives = 3;
  end

  def getLives 
    return @lives 
  end
end

player1 = Players.new
player2 = Player.new 

player1.generateQuestion
player1.answerQuestion
puts "#{player1.getLives}"