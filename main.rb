require './Classes/Players.rb'

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