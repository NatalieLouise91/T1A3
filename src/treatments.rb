require "tty-prompt"

def display_treatments
    require ("colorize")
    treatments = []
    # add each treatment hash to treatments array
    treatments << treatment1 = {
        name: "A Tasty Treat\n".green, 
        description:"When tackling coding challenges, nutrition is important to sustain you.\n 
        This Tasty Treat includes a selection of healthy coder snacks such as:\n
        - almonds\n
        - dark chocolate\n
        - copious amounts of strong organic coffee.\n", 
        price: 50}
    treatments << treatment2 = {
        name: "Detox Facial\n".green, 
        description:"You will immediately feel calm and refreshed after this facial. The Detox Facial includes:\n
        -  a one-hour de-stressing facial\n
        -  a tasty treat snack\n", 
        price: 150}
    treatments << treatment3 = {
        name: "New Hair, Who Dis?\n".green, 
        description:"Sit back, relax and enjoy a relaxing hair and scalp treatment. Your coder friends won't be able to recognise you after this haircut. You will be the envy of the entire class. New Hair, Who Dis includes:\n
        - a haircut\n
        - a choice of vibrant hairdye\n
        - a tasty treat snack\n", 
        price: 200}
    treatments << treatment4 = {
        name: "Coder Special\n".green, 
        description:"The Coder Special is an hour long treatment which includes:\n
        - a hand massage, which allows you to increase your typing speed and accuracy by 20%\n
        - a scalp massage, which allows you to complete a sprint without feeling any fatigue\n
        - a tasty treat snack\n", 
        price: 300}
    treatments << treatment5 = {
        name: "Stack Overflow Enlightenment\n".green, 
        description:"This is the Crème de la Crème of our spa treatments.\n 
        The treatment includes: \n
         - a four-hour mindfulness meditation session to get you in the right headspace for the next time you need to tackle a difficult ed challenge.\n 
         - a tasty treat snack\n
        After the treatment, you will be immediately revitalised and will be able to find the solution to the ed challenge on your first google attempt.\n", 
        price: 400}

        prompt = TTY::Prompt.new
        answer = prompt.select("Which treatment would you like to view?\n\n", %w(Full\ List\ of\ Treatments A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special\ Stack\ Overflow\ Enlightenment))
        

        #iterate over the treatments array to print full list of treatments 

    # treatments.each { |treatments| 
            # puts "Treatment: #{treatments[:name]}\n The Package: #{treatments[:description]}\n The Cost: #{treatments[:price]} spa points\n\n"
            # } 
            
        #select individual treatment 
            puts "Treatment: #{treatments[0][:name]}\n The Package: #{treatments[0][:description]}\n The Cost: #{treatments[0][:price]} spa points\n\n"
            puts "Treatment: #{treatments[1][:name]}\n The Package: #{treatments[1][:description]}\n The Cost: #{treatments[1][:price]} spa points\n\n"
            puts "Treatment: #{treatments[2][:name]}\n The Package: #{treatments[2][:description]}\n The Cost: #{treatments[2][:price]} spa points\n\n"
            puts "Treatment: #{treatments[3][:name]}\n The Package: #{treatments[3][:description]}\n The Cost: #{treatments[3][:price]} spa points\n\n"
            puts "Treatment: #{treatments[4][:name]}\n The Package: #{treatments[4][:description]}\n The Cost: #{treatments[4][:price]} spa points\n\n"
end 

display_treatments

