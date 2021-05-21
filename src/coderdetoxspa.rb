#Lolize Gem
# require "Lolize/auto"
# colorizer = Lolize::Colorizer.new
# colorizer.write "Welcome to the Detox Spa"
#Colorize Gem
require ("colorize")

#Artii Gem
require "artii"
arter = Artii::Base.new
puts arter.asciify("Welcome to").blue
arter = Artii::Base.new
puts arter.asciify("Coder  Detox  Spa !").green

#TTY-Prompt Gem
require "tty-prompt"

prompt = TTY::Prompt.new
answer = prompt.select("How can we help you today?\n\n", %w(Treatments\ Available Bookings\ Menu Check\ Spa\ Balance Exit))

    case answer
    when "Treatments Available"
        require_relative "treatments.rb"
    when "Bookings Menu"
        require_relative "bookings.rb"
    when "Check Spa Balance"
        require_relative "wallet.rb"
    else 
        puts "I hope you have enjoyed your time with us today."
    end

prompt = TTY::Prompt.new
answer = prompt.select("Was there anything else we could help your with today?\n\n", %w(Treatments\ Available Bookings\ Menu Check\ Spa\ Balance Exit))

    case answer
    when "Treatments Available"
        require_relative "treatments.rb"
    when "Bookings Menu"
        require_relative "bookings.rb"
    when "Check Spa Balance"
        require_relative "wallet.rb"
    else 
        puts "I hope you have enjoyed your time with us today."
    end

prompt = TTY::Prompt.new
answer = prompt.select("Was there anything else we could help your with today?\n\n", %w(Treatments\ Available Bookings\ Menu Check\ Spa\ Balance Exit))
    
    case answer
    when "Treatments Available"
        require_relative "treatments.rb"
    when "Bookings Menu"
        require_relative "bookings.rb"
    when "Check Spa Balance"
        puts "You currently have #{$wallet.wallet} spa points."
    else 
        puts "I hope you have enjoyed your time with us today."
    end