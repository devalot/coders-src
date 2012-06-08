class RockPaperScissors

  def play (player1, player2)
    if player1 == "rock" and player2 == "scissors"
      player1
    elsif player1 == "paper" and player2 == "rock"
      player1
    elsif player1 == "scissors" and player2 == "paper"
      player1
    else
      player2
    end
  end
end
