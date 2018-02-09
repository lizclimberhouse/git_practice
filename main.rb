require 'colorize'
require_relative 'git'

class Main
  include Git

  def self.menu
    puts 'Main Menu'.colorize(:cyan) #hahahah
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
end 

Main.menu