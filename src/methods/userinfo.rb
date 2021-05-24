# --------------------------------------------------METHODS FOR PROGRESSBARS---------------------------------------------------------------------
#CLOSING PROGRESSBAR - before application exits

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

# LOADING MENU ITEMS

# BALANCE 

def loading_balance
    bar = TTY::ProgressBar.new("Checking your spa points balance...[:bar]", total: 40)
    40.times do
        sleep(0.1)
        bar.advance(1)
    end
end

# SPA

def loading_spa
    bar = TTY::ProgressBar.new("Loading Coder Detox Spa... Prepare to be relaxed...[:bar]", total: 40)
    40.times do
        sleep(0.1)
        bar.advance(1)
    end
end

# Transaction method
def buy(num1, num2)
    sum = num1.to_i - num2.to_i
    return sum
end