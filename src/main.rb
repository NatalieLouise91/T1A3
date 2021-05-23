#required local files
require 'tty-prompt'
require_relative './methods/aesthetics'
require_relative './methods/userinfo'

# Gems required 
require "tty-prompt"
require "Artii"
require "colorize"

# Error handling 

# Empty name string error message 
class InvalidNameError < StandardError
end 

def valid_name(name)
    name = name.strip
    raise InvalidNameError, "Name must not be empty" if name.empty?
    name
end 

# Welcoming user section 

puts "Coder Detox Spa!"
puts "Please enter your name:"
name = gets.strip.to_s
valid_name(name)
puts "Hello #{name}, welcome to the Coder Detox Spa! You can earn points to use at the Coder Detox Spa by completing a quiz on programming.\n\n"

def main_menu

prompt = TTY::Prompt.new
answer = prompt.select("What would you like to do?\n\n", %w(Start\ Quiz Check\ Balance Enter\ Coder\ Detox\ Spa))

    if answer == "Start Quiz"
        puts "Loading Programming Quiz"
        require_relative "quiz.rb"
    elsif answer == "Check Balance"
        puts "Checking your spa balance"
        puts require_relative "wallet.rb"
    elsif answer == "Enter Coder Detox Spa"
        puts "Loading Coder Detox Spa"
        puts require_relative "coderdetoxspa.rb"
    else 
        return "Have a nice day!"
    end
end 

main_menu

prompt = TTY::Prompt.new
answer = prompt.select("Would you like to return to the main menu?\n\n", %w(Yes No))

if answer == "Yes"
    puts main_menu    
else
    puts "Have a nice day #{name}. I hope you have enjoyed your time at Coder Detox Spa!"   
end

prompt = TTY::Prompt.new
answer = prompt.select("Would you like to return to the main menu?\n\n", %w(Yes No))

if answer == "Yes"
    puts main_menu    
else
    puts "Have a nice day #{name}. I hope you have enjoyed your time at Coder Detox Spa!"   
end


  puts "Testing. This is the end of input"