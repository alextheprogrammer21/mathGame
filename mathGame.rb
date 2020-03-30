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

class Players < GameLogic
  def initialize 
    @lives = 3;
  end

  def getLives 
    return @lives 
  end
end

player1 = Players.new
player2 = Players.new 

while player1.getLives != 0 && player2.getLives !=0

questionData = player1.generateQuestion

puts "Player1: What does #{questionData[0]} #{questionData[1]} #{questionData[2]} equal?"
player1.answerQuestion(gets.to_f)
puts "Remaining lives: p1:#{player1.getLives} p2:#{player2.getLives}"

if player1.getLives == 0
  puts "Player 1 has run out of lives. Player 2 wins!"
  return nil;
end

questionData = player2.generateQuestion

puts "Player2: What does #{questionData[0]} #{questionData[1]} #{questionData[2]} equal?"
player2.answerQuestion(gets.to_f)
puts "Remaining lives: p1:#{player1.getLives} p2:#{player2.getLives}"

if player2.getLives == 0
  puts "Player 2 has run out of lives. Player 1 wins!"
  return nil;
end

end