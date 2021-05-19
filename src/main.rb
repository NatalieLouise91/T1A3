require "tty-prompt"

wallet = 0 

class Menu 
    attr_accessor :name, :function
end 

menu1 = Menu.new()
menu1.name = "Start Quiz"
menu1.function = require_relative "quiz.rb"

menu2 = Menu.new()
menu2.name = "Check Balance"
menu2.function = "You currently have a balance of #{wallet} spa points.\n\n"

menu3 = Menu.new()
menu3.name = "Enter Coder Detox Spa!"


puts "Coder Detox Spa!"
puts "Please enter your name:"
name = gets.strip.to_s
puts "Hello #{name}, welcome to the Coder Detox Spa! You can earn points to use at the Coder Detox Spa by completing a quiz on programming.\n\n"


    prompt = TTY::Prompt.new
    answer = prompt.select("What would you like to do?\n\n", %w(Start\ Quiz Check\ Balance Enter\ Coder\ Detox\ Spa))

    if answer == "Start Quiz"
        puts menu1.function
    elsif answer == "Check Balance"
        puts menu2.function
    else 
        puts menu3.function
    end 

