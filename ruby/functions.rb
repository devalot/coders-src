def leap_year? (year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

leap_year?(2012) # => true
leap_year?(1999) # => false
