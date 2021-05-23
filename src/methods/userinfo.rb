#Opening welcome message

def welcome
    arter = Artii::Base.new
    puts arter.asciify("Welcome  to  Coder  Detox  Spa !").blue
end 

#Closing message before application exits

def goodbye
    puts "Closing application... Farewell...".blue
end
