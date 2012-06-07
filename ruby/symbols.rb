colors = {
  black: "000000",
  white: "ffffff",
   blue: "0000ff",
}

colors.respond_to?(:size) # => true
colors.send(:size) # => 3
