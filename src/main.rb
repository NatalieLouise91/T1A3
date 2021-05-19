require "tty-prompt"

=begin
wallet = 0 

class Menu 
    attr_accessor :name, :function
end 

menu1 = Menu.new()
menu1.name = "Start Quiz"
menu1.function = "Loading Programming Quiz"

menu2 = Menu.new()
menu2.name = "Check Balance"
menu2.function = "You currently have a balance of #{wallet} spa points.\n\n"

menu3 = Menu.new()
menu3.name = "Enter Coder Detox Spa!"
menu3.function = "Loading Coder Detox Spa"
=end 

module MainMenu
    def menu1
        puts "Loading Programming Quiz"
        require_relative "quiz.rb"
    end 
    def menu2
        puts "Loading your spa points balance."
        require_relative "wallet.rb"
    end 
    def menu3
        puts "Loading Coder Detox Spa"
        require_relative "coderdetoxspa.rb"
    end 
end 


puts "Coder Detox Spa!"
puts "Please enter your name:"
name = gets.strip.to_s
puts "Hello #{name}, welcome to the Coder Detox Spa! You can earn points to use at the Coder Detox Spa by completing a quiz on programming.\n\n"


    prompt = TTY::Prompt.new
    answer = prompt.select("What would you like to do?\n\n", %w(Start\ Quiz Check\ Balance Enter\ Coder\ Detox\ Spa))


    
    if answer == "Start Quiz"
        include MainMenu
        MainMenu.menu1
        # puts menu1.function
        # puts require_relative "quiz.rb"
    elsif answer == "Check Balance"
        include MainMenu
        MainMenu.menu2
        # puts menu2.function
    else 
        include MainMenu
        MainMenu.menu3
        # puts menu3.function
        # puts require_relative "coderdetoxspa.rb"
    end

    prompt = TTY::Prompt.new
    answer = prompt.select("Would you like to return to the main menu?\n\n", %w(Yes No))

    if answer == "Yes"
        puts main_menu      
    else
        puts "Have a nice day #{name}. I hope you have enjoyed your time at Coder Detox Spa!"   
    end

puts "Testing. This is the end of input"
