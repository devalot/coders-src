# {BEGIN: module}
module FoodStuff

  def peanut_butter
    puts("I like peanut butter")
  end

end

class Favorites
  include(FoodStuff)
end
# {END}

if $0 == __FILE__
# {BEGIN: usage}
Favorites.new.peanut_butter
# {END}
end
