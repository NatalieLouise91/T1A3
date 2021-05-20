# require "tty-prompt"
require "colorize"
require "artii"

# Error handling 

# invalid input for questionnaire
class InvalidInputError < StandardError
    attr_reader :action

    def initialize(msg ="Invalid input entered.")
        @invalid = invalid
        super (message)
    end 
end 
def invalid_input(answer)
    raise InvalidInputError, "Please use 'true' or 'false' answers" 
    answer 
end

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

# Question variables 

q1 = "Ruby is an object-oriented programming language.".green
q2 = "HTML stands for HyperTyped Markup Language".green
q3 = "In FlexBox, Justified Content defines how to position elements vertically".green
q4 = "The Git Command 'git remote show origin' allows you see more information about a remote repo".green
q5 = "Subresource Integrity is a security feature that prevents files from being manipulated".green
q6 = "The comparable mixin '<=>' compares values on either side of it and can be used to sort values".green
q7 = "In Ruby, you can access variables in a method from outside of that method".green
q8 = "In HTML, the textarea element is used to create a checkbox in a form".green

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

# Welcoming message & explanation of how to complete the quiz

#Artii Gem
require "artii"
arter = Artii::Base.new
puts arter.asciify("Welcome to the Programming Quiz!").blue

puts "This is a quiz that you can take to test out your programming knowledge and earn valuable spa points, which can be used at the Coder Detox Spa.\n\n".light_blue
puts "You will be presented with a statement on a number of programming concepts, in which you will have provide a response.\n. 
If you believe a statement is correct, please type in 'true'.\n 
On the other hand, if you believe a statement to be incorrect, please type in 'false'.\n\n".light_blue

# Questionnaire method which loops through Questions array and conditionally assigns points

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
        # rescue InvalidInputError => e
            # puts e.message 
            # puts e.invalid 
            # retry
        end 
    end
    end 
    return score
end

wallet = Questionnaire(questions)

require "Lolize/auto"
arter = Artii::Base.new
colorizer = Lolize::Colorizer.new
puts arter.asciify(colorizer.write"Congratulations!")
arter = Artii::Base.new
colorizer = Lolize::Colorizer.new
puts arter.asciify(colorizer.write"You have earned #{wallet} spa points.")