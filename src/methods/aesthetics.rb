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
    puts arter.asciify("Available  Treatments !").blue
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
    puts arter.asciify("W e l c o m e   t o").blue
    arter = Artii::Base.new
    puts arter.asciify("C o d e r    D e t o x    S p a !").green
end 

# Treatment headings 

def tasty_treat
    arter = Artii::Base.new
    puts arter.asciify("A  T a s t y  T r e a t").blue
end 

def detox_facial
    arter = Artii::Base.new
    puts arter.asciify("D e t o x   F a c i a l").blue
end 

def new_hair
    arter = Artii::Base.new
    puts arter.asciify("N e w   H a i r ,   W h o   D i s ?").blue
end 

def coder_special
    arter = Artii::Base.new
    puts arter.asciify("C o d e r   S p e c i a l").blue
end

def stack_overflow
    arter = Artii::Base.new
    puts arter.asciify("S t a c k   O v e r f l o w").blue
    arter = Artii::Base.new
    puts arter.asciify("E n l i g h t e n m e n t").blue
end 

#Opening welcome message

def welcome_message
    arter = Artii::Base.new
    puts arter.asciify("Welcome   to   Coder   Detox   Spa !").blue
end 

# Quiz welcome message

def quiz_header
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("P r o g r a m m i n g  Q u i z!").magenta
end

# Quiz final score and congratulations message

def congratulations
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("C o n g r a t u l a t i o n s !")
    arter = Artii::Base.new
    puts arter.asciify("Y o u   h a v e   e a r n e d  #{$wallet.wallet}  s p a   p o i n t s !")
end 

# GOODBYE HEADING

def goodbye_heading
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("SEE  YOU  NEXT  TIME !").blue
end 

# FINALISE HEADING

def finalise_heading
    self_clear
    arter = Artii::Base.new
    puts arter.asciify("FINALISE  YOUR  BOOKING").blue
end 

# TTY BOX - bordering boxes

def treatment_box
    box = TTY::Box.frame(width: 165, height: 5, align: :center) do
    "Full List of Treatments".green
    end
    puts box
end

def footer_box
    box = TTY::Box.frame(width: 165, height: 3, align: :center) do
        "▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎".magenta
    end
    puts box
end

def framing_box_small
    box = TTY::Box.frame(width: 100, height: 3, align: :center) do
    "▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎ ▪︎".magenta
    end
    puts box
end