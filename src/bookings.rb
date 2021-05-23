# Gems required 
require "tty-prompt"
require "Artii"
require "colorize"
require "tty-color"
require "tty-font"
require "tty-progressbar"
require "pastel"

require_relative './methods/aesthetics'
require_relative './methods/userinfo'

class Booking
    attr_accessor :treatment, :day, :time 
    def initialize(treatment, day, time)
        @treatment = treatment
        @day = day
        @time = time
    end 
end
        # Booking page heading & welcome
        arter = Artii::Base.new
        puts arter.asciify("Book  Your  Next  Treatment !").blue

        #Bookings menu
        prompt = TTY::Prompt.new
        answer = prompt.select("Please choose from the following menu to begin your booking:\n\n", %w(Choose\ a\ Treatment))

        booking = {}


        case answer
        when "Choose a Treatment" 
            
            # Create a booking heading
            create_booking_heading

            # User is prompted to select a treatment, answer is stored in booking hash
            answer = prompt.select("Please select your treatment:\n\n", %w(A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment))
            booking[:treatment] = answer

            # User is prompted to select a day, answer is stored in booking hash
            answer = prompt.select("Please select a day you would like your treatment:\n\n", %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday))
            booking[:day] = answer

            # User is prompted to select a time, answer is stored in booking hash
            answer = prompt.select("Please select a time you would like to have your treatment:\n\n", %w(9:00 10:00 11:00 12:00 13:00 14:00 15:00 16:00 17:00))
            booking[:time] = answer

            # Display to user their booking details
            print "You have now secured a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}."

            # Booking details are stored in a new class object called booking1 
            booking1 = Booking.new(booking[:treatment],booking[:day],booking[:time])

        prompt = TTY::Prompt.new
        answer = prompt.select("Was there anything else we could help you with today?\n\n", %w(Change\ Booking Display\ Booking Exit))

        case answer

        when "Display Booking"  

           # Display booking heading
            display_booking_heading

            # If user already has a booking
            if @treatment
                puts "You have a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}."
            # If user does not have a booking
            else 
                puts "You do not currently have a booking."
            end
        end
        
        when "Change Booking"

            # Change booking heading
            change_booking_heading

            puts "You currently have a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}.\n\n"
            puts "This booking will be deleted."

            # Items from hash are deleted
            booking.delete(:treatment)
            booking.delete(:day)
            booking.delete(:time)

            # User is prompted to reselect a new treatment
            answer = prompt.select("Please select a new treatment:\n\n", %w(A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment))
            
            # New treatment is stored in the bookings hash
            booking[:treatment] = answer

            # User is prompted to reselect a new day
            answer = prompt.select("Please select a new day that you would like your treatment:\n\n", %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday))
            
            # New day is store in the bookings hash
            booking[:day] = answer

            # User is prompted to reselect a new time
            answer = prompt.select("Please select a new time that you would like to have your treatment:\n\n", %w(9:00 10:00 11:00 12:00 13:00 14:00 15:00 16:00 17:00))
            
            # New time is store in the bookings hash
            booking[:time] = answer

            # New booking is stored in Booking class object booking2
            booking2 = Booking.new(booking[:treatment],booking[:day],booking[:time])

            # Message to user confirming the change in their booking
            puts "Your original booking was for #{booking1.treatment} on #{booking1.day} at #{booking1.time}.\n You have now changed that booking to #{booking2.treatment} on #{booking2.day} at #{booking2.time}.\n\n"
            puts "You have now secured a new booking. We look forward to seeing you on #{booking2.day} at #{booking2.time}."
        
        when "Exit"
            # Returning to main menu message
            return_menu
        end 