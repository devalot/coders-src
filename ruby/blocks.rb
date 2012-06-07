# {BEGIN: blocks_long}
a = [1, 2, 3, 4, 5]

a.each do |n|
  puts(n)
end

b = a.map do |n|
  n + 1
end

b # => [2, 3, 4, 5, 6]
# {END}

# {BEGIN: blocks_short}
a = [1, 2, 3, 4, 5]

a.each {|n| puts(n)}

b = a.map {|n| n + 1}
b # => [2, 3, 4, 5, 6]
# {END}
