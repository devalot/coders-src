def prompt_user_inside_a_loop
  loop do
    $stdout.write('Say something: ')
    answer = $stdin.gets.chomp
    break if answer == 'quit'
    $stdout.puts("You said: #{answer}")
  end
end

if $0 == __FILE__
  prompt_user_inside_a_loop
end
