require './player.rb'
require './question.rb'
require './turn.rb'

class Main
  puts "Enter Name of the First Player"
  name = gets.chomp
  player1 = Player.new(name)
  puts "Enter Name of the second Player"
  name = gets.chomp
  player2 = Player.new(name)
  turn = Turn.new(player1)
  while player1.life > 0 && player2.life > 0 do
    question = "Player #{turn.player.name}: #{turn.question.description}"
    puts question
    answer = gets.chomp
    if(answer != turn.question.correct_answer.to_s)
      turn.take_life
      puts "Seriously? No!"
    else
      puts "YES! You are correct"
    end
    puts "#{player1.name}: #{player1.life}/3 vs #{player2.name}: #{player2.life}/3"
    puts "------- NEW TURN ---------"
    turn.player == player1 ? turn = Turn.new(player2) : turn = Turn.new(player1)
  end
  if(player1.life == 0)
    puts "#{player2.name} wins the game"
  else
    puts "#{player1.name} wins the game" 
  end
  puts "------ GAME OVER -------"
  puts "Good bye!"
end
