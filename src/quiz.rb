require "tty-prompt"

class Quiz 
    attr_accessor :q, :a
    def initialize(q, a)
        @q = q
        @a = a
    end 
end 
prompt = TTY::Prompt.new
q1 = prompt.select("Ruby is an object-oriented programming language", %w(true false))
prompt = TTY::Prompt.new
q2 = prompt.select("HTML stands for HyperTyped Markup Language", %w(true false))
prompt = TTY::Prompt.new
q3 = prompt.select("In FlexBox, Justified Content defines how to position elements vertically", %w(true false))
prompt = TTY::Prompt.new
q4 = prompt.select("The Git Command 'git remote show origin' allows you see more information about a remote repo", %w(true false))
prompt = TTY::Prompt.new
q5 = prompt.select("Subresource Integrity is a security feature that prevents files from being manipulated", %w(true false))
prompt = TTY::Prompt.new
q6 = prompt.select("The comparable mixin '<=>' compares values on either side of it and can be used to sort values", %w(true false))
prompt = TTY::Prompt.new
q7 = prompt.select("In Ruby, you can access variables in a method from outside of that method", %w(true false))
prompt = TTY::Prompt.new
q8 = prompt.select("In HTML, the textarea element is used to create a checkbox in a form", %w(true false))


questions = [
    Quiz.new(q1, "true"),
    Quiz.new(q2, "false"),
    Quiz.new(q3, "false"),
    Quiz.new(q4, "true"),
    Quiz.new(q5, "true"),
    Quiz.new(q6, "true"),
    Quiz.new(q7, "false"),
    Quiz.new(q8, "false")
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
