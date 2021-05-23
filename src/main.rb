# Gems required 
require "tty-prompt"
require "Artii"
require "colorize"
require "tty-color"
require "tty-font"
require "tty-progressbar"
require "pastel"

#required local files
require_relative './methods/aesthetics'
require_relative './methods/userinfo'

# Error handling 

# Empty name string error message 
class InvalidNameError < StandardError
end 

def valid_name(name)
    name = name.strip
    raise InvalidNameError, "Name must not be empty" if name.empty?
    name
end 


# ---------------------------------------------------------QUIZ CODE------------------------------------------------------------------------

# --------------------------------------------------------QUIZ CLASSES----------------------------------------------------------------------

# QUIZ CLASS - to hold blueprint for questions, answers and score

class Quiz 
    attr_accessor :question, :answer, :incorrect, :score
    def initialize(question, answer, incorrect, score)
        @question = question
        @answer = answer
        @incorrect = incorrect
        @score = score
    end 
end

# SPA POINTS CLASS - to hold store new spa points

class SpaPoints 
    attr_accessor :wallet
    def initialize(wallet)
        @wallet = wallet
    end
end

#--------------------------------------------------------QUIZ VARIABLES----------------------------------------------------------------------

# Question variables 

q1 = "Ruby is an object-oriented programming language.".green
q2 = "HTML stands for HyperTyped Markup Language".green
q3 = "In FlexBox, Justified Content defines how to position elements vertically".green
q4 = "The Git Command 'git remote show origin' allows you see more information about a remote repo".green
q5 = "Subresource Integrity is a security feature that prevents files from being manipulated".green
q6 = "The comparable mixin '<=>' compares values on either side of it and can be used to sort values".green
q7 = "In Ruby, you can access variables in a method from outside of that method".green
q8 = "In HTML, the textarea element is used to create a checkbox in a form".green

# --------------------------------------------------------QUIZ CLASS OBJECTS----------------------------------------------------------------------

# Array of questions which holds new quiz items with corresponding question, answer, incorrect answer and score

questions = [
    Quiz.new(q1, "true", "false", 50),
    Quiz.new(q2, "false", "true", 50),
    Quiz.new(q3, "false", "true", 50),
    Quiz.new(q4, "true", "false", 50),
    Quiz.new(q5, "true", "false", 50),
    Quiz.new(q6, "true", "false", 50),
    Quiz.new(q7, "false", "true", 50),
    Quiz.new(q8, "false", "true", 50)
]

# --------------------------------------------------------QUIZ METHODS----------------------------------------------------------------------

# WELCOMING METHOD - message & explanation of how to complete the quiz

def quiz_instructions
    puts "This is a quiz that you can take to test out your programming knowledge and earn valuable spa points, which can be used at the Coder Detox Spa.\n\n".blue
    puts "You will be presented with a statement on a number of programming concepts, in which you will have provide a response.\n 
    If you believe a statement is correct, please type in 'true'.\n 
    On the other hand, if you believe a statement to be incorrect, please type in 'false'.\n\n".blue
end

# QUESTIONNAIRE METHOD - which loops through questions array and conditionally assigns points

def Questionnaire(questions)
    answer = ""
    score = 0
    attempts = 0
        attempts = attempts || 0
    begin
    for question in questions
        puts question.question
        answer = gets.strip.downcase.to_s
        if answer == question.answer
            score += question.score
        elsif answer == question.incorrect   
            score += 0
        else
        raise InvalidInputError.new "Invalid input entered. Please use 'true' or 'false' answers."
        end 
    end
    end 
    return score
end

# CONGRATULATIONS METHOD - provides the user with a final quiz score

def congratulations
    arter = Artii::Base.new
    puts arter.asciify("Congratulations!")
    arter = Artii::Base.new
    puts arter.asciify("You have earned #{$wallet.wallet} spa points.")
end 

# -----------------------------------------------------------------TREATMENT CODE---------------------------------------------------------------------

# -----------------------------------------------------------------TREATMENT CLASSES---------------------------------------------------------------------

class Treatment
    attr_accessor :name, :description, :price
    def initialize(name, description, price)
        @name = name
        @description = description
        @price = price
    end 
end 
# -----------------------------------------------------------------TREATMENT CLASS OBJECTS----------------------------------------------------------------

treatments = [

treatment1 = Treatment.new(
    "A Tasty Treat", 
    "When tackling coding challenges, nutrition is important to sustain you.\n 
        This Tasty Treat includes a selection of healthy coder snacks such as:\n
        - almonds\n
        - dark chocolate\n
        - copious amounts of strong organic coffee.\n", 
    50),
treatment2 = Treatment.new(
    "Detox Facial",
    "You will immediately feel calm and refreshed after this facial. The Detox Facial includes:\n
    -  a one-hour de-stressing facial\n
    -  a tasty treat snack\n", 
     150),
treatment3 = Treatment.new(
    "New Hair, Who Dis?", 
    "Sit back, relax and enjoy a relaxing hair and scalp treatment. Your coder friends won't be able to recognise you after this haircut. You will be the envy of the entire class. New Hair, Who Dis includes:\n
        - a haircut\n
        - a choice of vibrant hairdye\n
        - a tasty treat snack\n", 
    200),
treatment4 = Treatment.new(
    "Coder Special", 
    "The Coder Special is an hour long treatment which includes:\n
        - a hand massage, which allows you to increase your typing speed and accuracy by 20%\n
        - a scalp massage, which allows you to complete a sprint without feeling any fatigue\n
        - a tasty treat snack\n", 
    300),
treatment5 = Treatment.new(
    "Stack Overflow Enlightenment", 
    "This is the Crème de la Crème of our spa treatments.\n 
        The treatment includes: \n
         - a four-hour mindfulness meditation session to get you in the right headspace for the next time you need to tackle a difficult ed challenge.\n 
         - a tasty treat snack\n
        After the treatment, you will be immediately revitalised and will be able to find the solution to the ed challenge on your first google attempt.\n", 
    400)
]
# -----------------------------------------------------------------TREATMENT METHODS----------------------------------------------------------------

# DISPLAY ALL TREATMENTS METHOD - cycle through all treatment to print to the screen

def display_all_treatments(treatments)
    for treatment in treatments
        puts treatment.name
        puts "\n"
        puts treatment.description
        puts "\n"
        puts treatment.price
        puts "\n"
    end
end 

# DISPLAY INDIVIDUAL TREATMENTS METHOD - user can see individual treatments for convenience

def display_individual_treatments(treatment)
    puts "Treatment: #{treatment.name}\n\n The Package: #{treatment.description}\n\n The Cost: #{treatment.price} spa points\n\n\n"
end

# -----------------------------------------------------------------BOOKINGS CODE----------------------------------------------------------------

# -----------------------------------------------------------------BOOKINGS CLASSES----------------------------------------------------------------
# BOOKING CLASS - blueprint for booking objects

class Booking
    attr_accessor :treatment, :day, :time 
    def initialize(treatment, day, time)
        @treatment = treatment
        @day = day
        @time = time
    end 
end

#------------------------------------------------------------------BOOKINGS HASH---------------------------------------------------------------------
booking = {}
owing = [1]
# -----------------------------------------------------------------MAIN APPLICATION----------------------------------------------------------------

# Welcoming user section 

puts "Coder Detox Spa!"
puts "Please enter your name:"
name = gets.strip.to_s
valid_name(name)
puts "Hello #{name}, welcome to the Coder Detox Spa! You can earn points to use at the Coder Detox Spa by completing a quiz on programming.\n\n"

# WHILE LOOP - user can cycle through menu options until they decide to exit application
while true

    prompt = TTY::Prompt.new
    answer = prompt.select("What would you like to do?\n\n", %w(Start\ Quiz Check\ Balance Treatments\ Available Create\ a\ Booking Change\ Booking Display\ Booking Exit)) do

    case answer
    when  "Start Quiz"
            loading_quiz
            self_clear
            welcome_quiz
            quiz_instructions
            wallet = Questionnaire(questions)
            wallet = SpaPoints.new(wallet)
            $wallet = SpaPoints.new(wallet)
            $wallet = wallet
            congratulations
    when  "Check Balance"
            loading_balance
            if $wallet == nil
                puts "You don't have any spa points yet."
            else
                puts "You currently have #{$wallet.wallet} spa points."
            end
    when   "Treatments Available"
            loading_spa
            self_clear
            while true
                prompt = TTY::Prompt.new
                answer = prompt.select("Which treatment would you like to view?\n\n", %w(Full\ List\ of\ Treatments A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment Exit)) do
                if answer == "Full List of Treatments"
                    self_clear
                    display_all_treatments(treatments)
                elsif answer == "A Tasty Treat"
                    self_clear
                    tasty_treat
                    puts ""
                    display_individual_treatments(treatment1)
                elsif answer == "Detox Facial"
                    self_clear
                    detox_facial
                    puts ""
                    display_individual_treatments(treatment2)
                elsif answer == "New Hair, Who Dis?"
                    self_clear
                    new_hair
                    puts ""
                    display_individual_treatments(treatment3)
                elsif answer == "Coder Special"
                    self_clear
                    coder_special
                    puts ""
                    display_individual_treatments(treatment4)
                elsif answer == "Stack Overflow Enlightenment"
                    self_clear
                    stack_overflow
                    puts ""
                    display_individual_treatments(treatment5)
                end 
            end
            if answer == "Exit"
                self_clear
                break
            end
            end
    when  "Create a Booking"
        if owing != nil
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
        print "You have now secured a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}.\n\n"

        else
            puts "Thank you for waiting #{name}, it appears you already have a booking.\n 
            If you would like to change your booking, please select Change Booking from the main menu."
        end
        # Booking details are stored in a new class object called booking1 
        booking1 = Booking.new(booking[:treatment],booking[:day],booking[:time])
        owing << 100

    when  "Display Booking"
        if owing != nil
            puts "You currently have a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}.\n\n"
        else 
            puts "Sorry #{name}, it appears that you do not have a booking yet. Select create a booking to change that!"
        end
    when  "Change Booking"
        # Change booking heading
        change_booking_heading
        if owing != nil
            puts "You currently have a booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}.\n\n"
            puts "This booking will be deleted.\n\n"

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
            puts "You have now have a new booking for #{booking[:treatment]} on #{booking[:day]} at #{booking[:time]}.\n\n"
            puts "This booking is secured, we look forward to seeing you on #{booking[:day]} at #{booking[:time]}."
            
        else  
            "Sorry #{name}, it appears that you do not have a booking yet. Select create a booking to change that!"
        end
    end
    end
    if answer == "Exit"
        puts "Have a wonderful day, #{name}. I hope you have enjoyed your time at Coder Detox Spa!" 
        goodbye_message
        break
    end 
end  

# -----------------------------------------------------------------SPA MENU----------------------------------------------------------------