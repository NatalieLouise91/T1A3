#Opening welcome message

def welcome_message
    arter = Artii::Base.new
    puts arter.asciify("Welcome  to  Coder  Detox  Spa !").blue
end 

# Quiz welcome message
def welcome_quiz
    arter = Artii::Base.new
    puts arter.asciify("Welcome to the Programming Quiz!").blue
end

#Closing message before application exits

def goodbye_message
    bar = TTY::ProgressBar.new("Exiting Coder Detox Spa... Farewell...[:bar]", total: 30)
    30.times do
        sleep(0.1)
        bar.advance(1)
    end
end

def loading_quiz
    bar = TTY::ProgressBar.new("Loading Programming Quiz... Goodluck!...[:bar]", total: 40)
    40.times do
        sleep(0.1)
        bar.advance(1)
    end
end

# Loading menu items message

def loading_balance
    bar = TTY::ProgressBar.new("Checking your spa points balance...[:bar]", total: 40)
    40.times do
        sleep(0.1)
        bar.advance(1)
    end
end

def loading_spa
    bar = TTY::ProgressBar.new("Loading Coder Detox Spa... Prepare to be relaxed...[:bar]", total: 40)
    40.times do
        sleep(0.1)
        bar.advance(1)
    end
end
