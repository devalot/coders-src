class Fortune

  FORTUNES = [
    "Your luck is about to improve.",
    "A great opportunity is just around the corner.",
    "A friend will bring you good news.",
    "Dark clouds are approaching.",
  ]

  def fortune
    FORTUNES[rand(FORTUNES.size)]
  end
end
