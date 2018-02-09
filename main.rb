require 'colorize'

def puts_git(cmd)
  puts `git #{cmd} -h` #back ticks
end

def menu
  puts 'Main Menu'.colorize(:cyan)
  puts '1: Enter git command'.colorize(:cyan)
  puts '2: Exit'.colorize(:cyan)
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter git command'.colorize(:blue)
    puts_git(gets.strip)
    menu
  when 2
    exit
  else
    puts 'Invalid choice'.colorize(:red)
    menu
  end
end 

menu