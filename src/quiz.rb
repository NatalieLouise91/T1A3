# require "tty-prompt"

class Quiz 
    attr_accessor :q, :a, :score
    def initialize(q, a, score)
        @q = q
        @a = a
        @score = score
    end 
end 
# prompt = TTY::Prompt.new
q1 = "Ruby is an object-oriented programming language."
# prompt.select("Ruby is an object-oriented programming language", %w(true false))
# prompt = TTY::Prompt.new
q2 = "HTML stands for HyperTyped Markup Language"
# prompt.select("HTML stands for HyperTyped Markup Language", %w(true false))
# prompt = TTY::Prompt.new
q3 = "In FlexBox, Justified Content defines how to position elements vertically"
# prompt.select("In FlexBox, Justified Content defines how to position elements vertically", %w(true false))
# prompt = TTY::Prompt.new
q4 = "The Git Command 'git remote show origin' allows you see more information about a remote repo"
# prompt.select("The Git Command 'git remote show origin' allows you see more information about a remote repo", %w(true false))
# prompt = TTY::Prompt.new
q5 = "Subresource Integrity is a security feature that prevents files from being manipulated"
# prompt.select("Subresource Integrity is a security feature that prevents files from being manipulated", %w(true false))
# prompt = TTY::Prompt.new
q6 = "The comparable mixin '<=>' compares values on either side of it and can be used to sort values"
# prompt.select("The comparable mixin '<=>' compares values on either side of it and can be used to sort values", %w(true false))
# prompt = TTY::Prompt.new
q7 = "In Ruby, you can access variables in a method from outside of that method"
# prompt.select("In Ruby, you can access variables in a method from outside of that method", %w(true false))
# prompt = TTY::Prompt.new
q8 = "In HTML, the textarea element is used to create a checkbox in a form"
# prompt.select("In HTML, the textarea element is used to create a checkbox in a form", %w(true false))


questions = [
    Quiz.new(q1, "true", 50),
    Quiz.new(q2, "false", 50),
    Quiz.new(q3, "false", 50),
    Quiz.new(q4, "true", 50),
    Quiz.new(q5, "true", 50),
    Quiz.new(q6, "true", 50),
    Quiz.new(q7, "false", 50),
    Quiz.new(q8, "false", 50)
]

def Questionnaire(questions)
    answer = ""
    score = 0
    attempts = 0
        attempts = attempts || 0
    for question in questions
        puts question.q
        answer = gets.strip.downcase.to_s
        if answer == question.a
            score += 1
        else 
            score += 0
        end 
    end
    return score
end

score = Questionnaire(questions)
# wallet = score * 50

# print wallet 
puts score 
