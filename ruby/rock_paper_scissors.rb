class RockPaperScissors

  WINS = {
    "rock"     => "scissors",
    "paper"    => "rock",
    "scissors" => "paper",
  }

  def play (hand_one, hand_two)
    if hand_one == hand_two
      "tie"
    elsif WINS[hand_one] == hand_two
      hand_one
    else
      hand_two
    end
  end
end
