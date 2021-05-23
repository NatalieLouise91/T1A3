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

#Artii Ascii Headings

def bookings_heading
    arter = Artii::Base.new
    puts arter.asciify("Book  Your  Next  Treatment !").blue
end 

# create booking heading

def create_booking_heading
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.magenta(font.write("Create a Booking", letter_spacing: 1))
end 

# change booking heading

def change_booking_heading
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.magenta(font.write("Change Booking", letter_spacing: 1))
end 

# display booking heading

def display_booking_heading
    font = TTY::Font.new(:starwars)
    pastel = Pastel.new
    puts pastel.cyan(font.write("Current Booking", letter_spacing: 1))
end 

# Spa Welcome

def spa_heading
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

