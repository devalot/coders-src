def leap_year? (year)
  if year % 400 == 0
    return true
  elsif year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  else
    return false
  end
end

leap_year?(2012) # => true
leap_year?(1999) # => false
