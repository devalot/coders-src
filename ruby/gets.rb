if $0 == __FILE__
# {BEGIN: gets}
loop do
  $stdout.write('Say something: ')
  answer = $stdin.gets.chomp
  break if answer == 'quit'
  $stdout.puts("You said: #{answer}")
end
# {END}
end
