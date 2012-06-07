a = [15, 85, 200]
a[0]  # => 15
a[-1] # => 200

a[1] = 20
a # => [15, 20, 200]

states = ["CO", "AZ", "FL", "CA"]
states.first          # => "CO"
states.empty?         # => false
states.include?("AZ") # => true

states.last # => "CA"
states.size # => 4

states << "NY"
states.last # => "NY"
states.size # => 5
