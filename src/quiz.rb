class Quiz 
    attr_accessor :q, :a
    def initialize(q, a)
        @q = q
        @a = a
    end 
end 

p1 = "Ruby is an object-oriented programming language"
p2 = "HTML stands for HyperTyped Markup Language"
p3 = "In FlexBox, Justified Content defines how to position elements vertically"
p4 = 
p5 = 
p6 = 
p7 = 
p8 = 


questions = [
    Quiz.new(p1, "true"),
    Quiz.new(p2, "false"),
    Quiz.new(p3, "false"),
    Quiz.new(p4, "yes"),
    Quiz.new(p5, "yes"),
    Quiz.new(p6, "yes"),
    Quiz.new(p7, "yes"),
    Quiz.new(p8, "yes")
]

def Questionnaire(questions)
    answer = ""
    score = 0
    attempts = 0
        attempts = attempts || 0
    for question in questions
        puts question.q
        answer = gets.stip.downcase.to_s
        if answer == question.a
            score += 1
        elsif answer != question.a && answer !=is_a?(string)    
            puts "Invalid answer, please use 'true' or 'false answers."
        end 
    end
    return score
end

Questionnaire(questions)