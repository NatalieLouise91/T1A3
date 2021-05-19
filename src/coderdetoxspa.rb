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
answer = prompt.select("How can we help you today?\n\n", %w(Treatments\ Available Create\ Booking Change\ Booking\  Check\ Booking))

    case answer
    when "Treatments Available"
        require_relative "treatments.rb"
    when "Create Booking"
        require_relative "bookings.rb"
    when "Change Booking"
        require_relative "bookings.rb"
    when "Check Booking"
        require_relative "bookings.rb"
    end
