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

def create_a_booking
    arter = Artii::Base.new
    puts arter.asciify("Book  Your  Next  Treatment !").blue
end 

