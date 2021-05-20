# tty-prompt Gem
require "tty-prompt"

#Artii Gem
require "artii"

#Colorize Gem
require ("colorize")

class Booking
    attr_accessor :treatment, :day, :time 
    def initialize(treatment, day, time)
        @treatment = treatment
        @day = day
        @time = time
    end 
end

    def create_booking

        arter = Artii::Base.new
        puts arter.asciify("Create a Booking").blue

        prompt = TTY::Prompt.new
        answer = prompt.select("Please choose from the following menu to begin your booking:\n\n", %w(Choose\ a\ Treatment Display\ Booking Exit))

        treatment = []
        day = []
        time = []

        case answer
        when "Choose a Treatment" 
            answer = prompt.select("Please select your treatment:\n\n", %w(A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment))
            treatment << answer
            answer = prompt.select("Please select a day you would like your treatment:\n\n", %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday))
            day << answer
            answer = prompt.select("Please select a time you would like to have your treatment:\n\n", %w(9:00 10:00 11:00 12:00 13:00 14:00 15:00 16:00 17:00))
            time << answer
            print "You have now secured a booking for #{treatment} on #{day} at #{time}."
        when "Display Booking"  
            print "You have a booking for #{treatment} on #{day} at #{time}."
        else 
            print "Have a nice day!"
        end
    end 

    def change_booking
        puts "Your currently have a booking for #{treatment} on #{day} at #{time}."
        
        prompt = TTY::Prompt.new
        answer = prompt.select("Would you like to change this booking?\n\n", %w(Yes No))
        
        case answer
        when "Yes"
            answer = prompt.select("Please select your treatment:\n\n", %w(A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment))
            treatment << answer
            answer = prompt.select("Please select a day you would like your treatment:\n\n", %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday))
            day << answer
            answer = prompt.select("Please select a time you would like to have your treatment:\n\n", %w(9:00 10:00 11:00 12:00 13:00 14:00 15:00 16:00 17:00))
            time << answer
            print "You have now secured a booking for #{treatment} on #{day} at #{time}."
        when "No"
            print "You will keep your booking for #{treatment} on #{day} at #{time}."
        end 

    end 
