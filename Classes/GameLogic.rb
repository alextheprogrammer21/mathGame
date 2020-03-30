require_relative 'Players.rb'

class GameLogic

  def getOperator(selector)
    operators = ["plus", "minus", "multipled by", "divided by"]
    @operator = operators[selector]
  end
  

  def generateQuestion
    num1 = rand(20) + 1; num2 = rand(20) + 1; selector = rand(4);
    
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
    @answer = (num1 / num2.to_f).truncate(1);
    end

    return [num1, getOperator(selector), num2]
  end
    
    

  def answerQuestion(playerAnswer)

    if playerAnswer.truncate(1) == @answer.truncate(1) 
      puts "Correct the answer is #{@answer}";
    else
      puts "Incorrect. The correct answer is #{@answer}";
      @lives -= 1;
    end
  end
end