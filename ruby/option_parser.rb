require('optparse')

OptionParser.new do |parser|

  parser.on('-h', '--help', 'A help message') do
    puts(parser)
    exit
  end

  parser.on('-s', '--speed=SPEED', 'Go this fast') do |speed|
    puts("speed is now #{speed}")
  end

end.parse(ARGV)
