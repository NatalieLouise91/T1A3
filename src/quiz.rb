# require "tty-prompt"

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

# Empty name string error message 
class InvalidNameError < StandardError
end 

def validate_name(name)
    name = name.strip
    raise InvalidNameError, "Name must not be empty" if name.empty?
    name
end 
validate_name 

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

q1 = "Ruby is an object-oriented programming language."
q2 = "HTML stands for HyperTyped Markup Language"
q3 = "In FlexBox, Justified Content defines how to position elements vertically"
q4 = "The Git Command 'git remote show origin' allows you see more information about a remote repo"
q5 = "Subresource Integrity is a security feature that prevents files from being manipulated"
q6 = "The comparable mixin '<=>' compares values on either side of it and can be used to sort values"
q7 = "In Ruby, you can access variables in a method from outside of that method"
q8 = "In HTML, the textarea element is used to create a checkbox in a form"

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

puts "Welcome to the Programming Quiz!"
puts "This is a quiz that you can test out your programming knowledge and earn valuable spa points, which can be used at the Coder Detox Spa."

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
puts wallet

 
