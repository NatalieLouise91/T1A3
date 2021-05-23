require "tty-prompt"
require_relative "./methods/aesthetics.rb"

class Treatment
    attr_accessor :name, :description, :price
    def initialize(name, description, price)
        @name = name
        @description = description
        @price = price
    end 
end 



treatment1 = Treatment.new(
    "A Tasty Treat", 
    "When tackling coding challenges, nutrition is important to sustain you.\n 
        This Tasty Treat includes a selection of healthy coder snacks such as:\n
        - almonds\n
        - dark chocolate\n
        - copious amounts of strong organic coffee.\n", 
    50)
treatment2 = Treatment.new(
    "Detox Facial",
    "You will immediately feel calm and refreshed after this facial. The Detox Facial includes:\n
    -  a one-hour de-stressing facial\n
    -  a tasty treat snack\n", 
     150)
treatment3 = Treatment.new(
    "New Hair, Who Dis?", 
    "Sit back, relax and enjoy a relaxing hair and scalp treatment. Your coder friends won't be able to recognise you after this haircut. You will be the envy of the entire class. New Hair, Who Dis includes:\n
        - a haircut\n
        - a choice of vibrant hairdye\n
        - a tasty treat snack\n", 
    200)
treatment4 = Treatment.new(
    "Coder Special", 
    "The Coder Special is an hour long treatment which includes:\n
        - a hand massage, which allows you to increase your typing speed and accuracy by 20%\n
        - a scalp massage, which allows you to complete a sprint without feeling any fatigue\n
        - a tasty treat snack\n", 
    300)
treatment5 = Treatment.new(
    "Stack Overflow Enlightenment", 
    "This is the Crème de la Crème of our spa treatments.\n 
        The treatment includes: \n
         - a four-hour mindfulness meditation session to get you in the right headspace for the next time you need to tackle a difficult ed challenge.\n 
         - a tasty treat snack\n
        After the treatment, you will be immediately revitalised and will be able to find the solution to the ed challenge on your first google attempt.\n", 
    400)


while true

prompt = TTY::Prompt.new
answer = prompt.select("Which treatment would you like to view?\n\n", %w(Full\ List\ of\ Treatments A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment Exit)) do
        case answer
        when "Full List of Treatments"
            self_clear
            puts "Treatment: #{treatment1.name}\n\n The Package: #{treatment1.description}\n\n The Cost: #{treatment1.price} spa points\n\n\n"
            puts "Treatment: #{treatment2.name}\n\n The Package: #{treatment2.description}\n\n The Cost: #{treatment2.price} spa points\n\n\n"
            puts "Treatment: #{treatment3.name}\n\n The Package: #{treatment3.description}\n\n The Cost: #{treatment3.price} spa points\n\n\n"
            puts "Treatment: #{treatment4.name}\n\n The Package: #{treatment4.description}\n\n The Cost: #{treatment4.price} spa points\n\n\n"
            puts "Treatment: #{treatment5.name}\n\n The Package: #{treatment5.description}\n\n The Cost: #{treatment5.price} spa points\n\n\n"
        when "A Tasty Treat"
            self_clear
            tasty_treat
            puts "Treatment: #{treatment1.name}\n\n The Package: #{treatment1.description}\n\n The Cost: #{treatment1.price} spa points\n\n\n"
        when "Detox Facial"
            self_clear
            detox_facial
            puts "Treatment: #{treatment2.name}\n\n The Package: #{treatment2.description}\n\n The Cost: #{treatment2.price} spa points\n\n\n"
        when "New Hair, Who Dis?"
            self_clear
            new_hair
            puts "Treatment: #{treatment3.name}\n\n The Package: #{treatment3.description}\n\n The Cost: #{treatment3.price} spa points\n\n\n"
        when "Coder Special"
            self_clear
            coder_special
            puts "Treatment: #{treatment4.name}\n\n The Package: #{treatment4.description}\n\n The Cost: #{treatment4.price} spa points\n\n\n"
        when "Stack Overflow Enlightenment"
            self_clear
            stack_overflow
            puts "Treatment: #{treatment5.name}\n\n The Package: #{treatment5.description}\n\n The Cost: #{treatment5.price} spa points\n\n\n"
        end 
end
if answer == "Exit"
    self_clear
    break
end
end 
