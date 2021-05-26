# require 'rspec/autorun'
require_relative "../quiz.rb"
require_relative "../methods/userinfo.rb"


# Rspec test for ensuring test is scoring correctly 

describe 'questionnaire method' do
    class Quiz 
        attr_accessor :question, :answer, :incorrect, :score
        def initialize(question, answer, incorrect, score)
            @question = question
            @answer = answer
            @incorrect = incorrect
            @score = score
        end 
    end 
    
#     # Question variables 
    
    q1 = "Ruby is an object-oriented programming language."
    q2 = "HTML stands for HyperTyped Markup Language"
    q3 = "In FlexBox, Justified Content defines how to position elements vertically"
    q4 = "The Git Command 'git remote show origin' allows you see more information about a remote repo"
    q5 = "Subresource Integrity is a security feature that prevents files from being manipulated"
    q6 = "The comparable mixin '<=>' compares values on either side of it and can be used to sort values"
    q7 = "In Ruby, you can access variables in a method from outside of that method"
    q8 = "In HTML, the textarea element is used to create a checkbox in a form"
    
#     # Array of questions which holds new quiz items with corresponding question, answer, incorrect answer and score
    
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
    
    # testing point allocation and scoring - if all questions answered correctly
    it 'should be able to return a score' do
        expect (Questionnaire(questions)).to eq 400
    end
end

# Rspec test for buy method used for treatment checkout 

describe 'transaction' do
    it 'should be able to subtract one number from another number' do
        expect (buy(300, 150)).to be(150)      
    end
 end

#  Respec tests for error handling in application

describe 'invalid input error' do
    it 'should raise an InvalidInputError' do
        expect {invalid_input("kjlkj").to raise_error(InvalidInputError)}
    end
end
