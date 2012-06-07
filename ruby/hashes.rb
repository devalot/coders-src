drink_sizes = {
  "small"  => 16,
  "medium" => 32,
  "large"  => 64,
}

drink_sizes["small"] # => 16
drink_sizes.include?("small") # => true
drink_sizes.has_key?("small") # => true

drink_sizes["extra large"] = 128
