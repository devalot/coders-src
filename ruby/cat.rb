def cat_file (file_name=__FILE__)
  File.open(file_name) do |file|
    file.each_line do |line|
      print(line)
    end
  end
end

if $0 == __FILE__
  cat_file
end
