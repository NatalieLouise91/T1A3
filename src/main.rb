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
require_relative "coderdetoxspa.rb"
# require_relative "quiz.rb"

# Error handling 

# Empty name string error message 
class InvalidNameError < StandardError
end 

def valid_name(name)
    name = name.strip
    raise InvalidNameError, "Name must not be empty" if name.empty?
    name
end 

# Classes

# QUIZ CODE

# --------------------------------------------------------QUIZ CLASSES----------------------------------------------------------------------

# Quiz class to hold blueprint for questions, answers and score

class Quiz 
    attr_accessor :question, :answer, :incorrect, :score
    def initialize(question, answer, incorrect, score)
        @question = question
        @answer = answer
        @incorrect = incorrect
        @score = score
    end 
end

# Class that can store new spa points

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

# Final score and congratulations message

def congratulations
    arter = Artii::Base.new
    puts arter.asciify("Congratulations!")
    arter = Artii::Base.new
    puts arter.asciify("You have earned #{$wallet.wallet} spa points.")
end 

# ----------------------------------------------------------------------------------------------------------------------------------------------
# Welcoming user section 

puts "Coder Detox Spa!"
puts "Please enter your name:"
name = gets.strip.to_s
valid_name(name)
puts "Hello #{name}, welcome to the Coder Detox Spa! You can earn points to use at the Coder Detox Spa by completing a quiz on programming.\n\n"

while true

    prompt = TTY::Prompt.new
    answer = prompt.select("What would you like to do?\n\n", %w(Start\ Quiz Check\ Balance Enter\ Coder\ Detox\ Spa Exit)) do

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
    when "Enter Coder Detox Spa"
            loading_spa
            self_clear
            spa_heading
            spa_menu
    end
    end
    if answer == "Exit"
        puts "Have a wonderful day, #{name}. I hope you have enjoyed your time at Coder Detox Spa!" 
        goodbye_message
        break
    end 
end  