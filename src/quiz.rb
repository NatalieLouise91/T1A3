class Quiz 
    attr_accessor :q, :a
    def initialize(q, a)
        @q = q
        @a = a
    end 
end 

q1 = "Ruby is an object-oriented programming language"
q2 = "HTML stands for HyperTyped Markup Language"
q3 = "In FlexBox, Justified Content defines how to position elements vertically"
q4 = "The Git Command 'git remote show origin' allows you see more information about a remote repo"
q5 = "Subresource Integrity is a security feature that prevents files from being manipulated"
q6 = "The comparable mixin '<=>' compares values on either side of it and can be used to sort values"
q7 = "In Ruby, you can access variables in a method from outside of that method"
q8 = "In HTML, the textarea element is used to create a checkbox in a form"


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
        elsif answer != question.a && answer =is_a?(String)
            puts "Sorry, your answer is incorrect."
        elsif answer !=is_a?(String)
            puts "Please use either 'true' or 'false' answers."
        end 
    end
    return score
end

score = Questionnaire(questions)
wallet = score * 50

print wallet 
