def random_long
  # {BEGIN: random_long}
  a = ["Peter", "Paul", "Mary", "Bob"]
  random_index = rand(a.size)
  name = a[random_index]
  # {END}
end

def random_short
  # {BEGIN: random_short}
  a = ["Peter", "Paul", "Mary", "Bob"]
  name = a[rand(a.size)]
  # {END}
end
