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

    # def create_booking

        arter = Artii::Base.new
        puts arter.asciify("Book  Your  Next  Treatment !").blue

        prompt = TTY::Prompt.new
        answer = prompt.select("Please choose from the following menu to begin your booking:\n\n", %w(Choose\ a\ Treatment Display\ Booking Exit))

        booking = {}
        # treatment = []
        # day = []
        # time = []

        case answer
        when "Choose a Treatment" 
            answer = prompt.select("Please select your treatment:\n\n", %w(A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment))
            # treatment << answer
            booking[:treatment] = answer
            answer = prompt.select("Please select a day you would like your treatment:\n\n", %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday))
            # day << answer
            booking[:day] = answer
            answer = prompt.select("Please select a time you would like to have your treatment:\n\n", %w(9:00 10:00 11:00 12:00 13:00 14:00 15:00 16:00 17:00))
            # time << answer
            booking[:time] = answer
            print "You have now secured a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}."
            booking1 = Booking.new(booking[:treatment],booking[:day],booking[:time])
        when "Display Booking"  
            print "You have a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}."
        else 
            print "Have a nice day!"
        end 
    # end 

    prompt = TTY::Prompt.new
    answer = prompt.select("Was there anything else we could help you with today?\n\n", %w(Choose\ a\ Treatment Display\ Booking Exit))

    # def change_booking
        puts "You currently have a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}."
        
        prompt = TTY::Prompt.new
        answer = prompt.select("Would you like to change this booking?\n\n", %w(Yes No))
        
        case answer
        when "Yes"
            booking.delete(:treatment)
            booking.delete(:day)
            booking.delete(:time)
            answer = prompt.select("Please select your treatment:\n\n", %w(A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment))
            booking[:treatment] = answer
            answer = prompt.select("Please select a day you would like your treatment:\n\n", %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday))
            booking[:day] = answer
            answer = prompt.select("Please select a time you would like to have your treatment:\n\n", %w(9:00 10:00 11:00 12:00 13:00 14:00 15:00 16:00 17:00))
            booking[:time] = answer
            booking2 = Booking.new(booking[:treatment],booking[:day],booking[:time])
            puts "Your original booking was for #{booking1.treatment} on #{booking1.day} at #{booking1.time}. You have now changed that booking to #{booking2.treatment} on #{booking2.day} at #{booking2.time}.\n"
            puts "You have now secured a new booking. We look forward to seeing you on #{booking2.day} at #{booking2.time}."
        when "No"
            print "You will keep your booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}."
        end 
    # end 

    # def display_booking
        # puts "Your currently have a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}."
    # end 


