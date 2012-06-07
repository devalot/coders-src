class Fortune

  def initialize
    @fortunes = [
      "Your luck is about to improve.",
      "A great opportunity is just around the corner.",
      "A friend will bring you good news.",
      "Dark clouds are approaching.",
    ]
  end

  def fortune
    @fortunes[rand(@fortunes.size)]
  end
end
