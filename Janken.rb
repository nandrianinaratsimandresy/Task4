class Player
  def hand
    puts "Please insert your choice"
    puts "0:Rock, 1:Scissors, 2:Paper"
      input_hand = gets.to_i
        while true
          if input_hand == 0
            puts "Your hand is rock"
          elsif input_hand == 1
            puts "Your hand is scissors"
          elsif input_hand == 2
            puts "Your hand is paper"
          end
          if  input_hand == 0 || input_hand == 1 || input_hand == 2
          return input_hand
          else
            puts "Please insert your choice again"
            puts "0:Rock, 1:Scissors, 2:Paper"
            input_hand = gets.to_i
          end
        end
  end
end

class Enemy
  def hand
      rand (0..2)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    janken = ["Rock", "Scissors", "Paper"]
    puts "The opponent's hand is #{janken[enemy_hand]}."
    if player_hand == enemy_hand
       puts "Draw"
    return true
    elsif
      (player_hand == 0 && enemy_hand == 1)||(player_hand == 1 && enemy_hand == 2)||(player_hand == 2 && enemy_hand == 0)
      puts "You Won"
   else
      puts "You lose"
      return false
   end
 end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game = true
  while next_game
    next_game = janken.pon(player.hand, enemy.hand)
  end
