require('optparse')

OptionParser.new do |parser|

  parser.on('-h', '--help', 'A help message') do
    puts('I saw -h or --help')
  end

end.parse(ARGV)
