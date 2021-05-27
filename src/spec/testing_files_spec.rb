# require 'rspec/autorun'
require_relative "../methods/userinfo.rb"

# Rspec test for buy method used for treatment checkout 
# this test is important to implement to ensure the checkout method correctly substracts the treatment price from the spa points

# TEST ONE

describe 'transaction' do
    it 'should be able to subtract one number from another number' do
        expect(buy(300, 150)).to eq(150)      
    end
 end

 # TEST TWO

 describe 'transaction' do
    it 'should be able to subtract one number from another number' do
        expect(buy(400, 400)).to eq(0)      
    end
 end

# Respec tests for error handling in application
# this test is important as it ensures that invalid user input entered in the quiz section notifies the user of their error

# TEST ONE

describe 'invalid input error' do
    it 'should raise an InvalidInputError' do
        expect {invalid_input("kjlkj").to raise_error(InvalidInputError)}
    end
end

# TEST TWO

describe 'invalid input error' do
    it 'should raise an InvalidInputError' do
        expect {invalid_input("").to raise_error(InvalidInputError)}
    end
end