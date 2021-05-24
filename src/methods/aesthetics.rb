#gems
require "pastel"

#clearing terminal screen between functions

def self_clear
    print "\e[2J\e[f"
end 

#back to the main menu function

def return_menu
    puts "Feel free to press any key to return to the main menu"
    $stdin.getch
    self_clear
end

# ----------------------------------------------------------APPLICATION HEADINGS-------------------------------------------------------------

def treatments_heading
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("Book  Your  Next  Treatment !").blue
end 

# DISPLAY BALANCE

def display_balance_heading
    self_clear
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.magenta(font.write("Display Balance", letter_spacing: 1))
end

# create booking heading

def create_booking_heading
    self_clear
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.magenta(font.write("Create a Booking", letter_spacing: 1))
end 

# change booking heading

def change_booking_heading
    self_clear
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.magenta(font.write("Change Booking", letter_spacing: 1))
end 

# display booking heading

def display_booking_heading
    self_clear
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.cyan(font.write("Current Booking", letter_spacing: 1))
end 

# Spa Welcome

def spa_heading
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("Welcome to").blue
    arter = Artii::Base.new
    puts arter.asciify("Coder  Detox  Spa !").green
end 

# Treatment headings 

def tasty_treat
    arter = Artii::Base.new
    puts arter.asciify("A Tasty Treat").blue
end 

def detox_facial
    arter = Artii::Base.new
    puts arter.asciify("Detox Facial").blue
end 

def new_hair
    arter = Artii::Base.new
    puts arter.asciify("New Hair, Who Dis?").blue
end 

def coder_special
    arter = Artii::Base.new
    puts arter.asciify("Coder Special").blue
end

def stack_overflow
    arter = Artii::Base.new
    puts arter.asciify("Stack Overflow").blue
    arter = Artii::Base.new
    puts arter.asciify("Enlightenment").blue
end 

#Opening welcome message

def welcome_message
    arter = Artii::Base.new
    puts arter.asciify("Welcome  to  Coder  Detox  Spa !").blue
end 

# Quiz welcome message
def welcome_quiz
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("Welcome to the Programming Quiz!").blue
end

# Quiz final score and congratulations message

def congratulations
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("Congratulations!")
    arter = Artii::Base.new
    puts arter.asciify("You have earned #{$wallet.wallet} spa points.")
end 

# GOODBYE HEADING

def goodbye_heading
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("SEE  YOU  NEXT  TIME !").blue
end 