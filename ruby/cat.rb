File.open('somefile') do |file|
  file.each_line do |line|
    print(line)
  end
end
