module FoodStuff
  def peanut_butter
    puts("I like peanut butter")
  end
end

class Favorites
  include(FoodStuff)
end

if $0 == __FILE__
  Favorites.new.peanut_butter
end
