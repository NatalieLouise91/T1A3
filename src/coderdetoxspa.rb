require_relative './methods/aesthetics'
require_relative './methods/userinfo'

# Gems required 
require "tty-prompt"
require "Artii"
require "colorize"
require "tty-color"
require "tty-font"
require "tty-progressbar"
require "pastel"

def spa_menu
    
    while true

    prompt = TTY::Prompt.new
    answer = prompt.select("How can we help you today?\n\n", %w(Treatments\ Available Bookings\ Menu Check\ Spa\ Balance Exit)) do

    case answer
    when "Treatments Available"
        # require_relative "treatments.rb"
        while true

            prompt = TTY::Prompt.new
            answer = prompt.select("Which treatment would you like to view?\n\n", %w(Full\ List\ of\ Treatments A\ Tasty\ Treat Detox\ Facial New\ Hair,\ Who\ Dis? Coder\ Special Stack\ Overflow\ Enlightenment Exit)) do
                    case answer
                    when "Full List of Treatments"
                        self_clear
                        display_all_treatments(treatments)
                    when "A Tasty Treat"
                        self_clear
                        tasty_treat
                        display_individual_treatments(treatment1)
                    when "Detox Facial"
                        self_clear
                        detox_facial
                        display_individual_treatments(treatment2)
                    when "New Hair, Who Dis?"
                        self_clear
                        new_hair
                        display_individual_treatments(treatment3)
                    when "Coder Special"
                        self_clear
                        coder_special
                        display_individual_treatments(treatment4)
                    when "Stack Overflow Enlightenment"
                        self_clear
                        stack_overflow
                        display_individual_treatments(treatment5)
                    end 
            end
            if answer == "Exit"
                self_clear
                break
            end
        end
    when "Bookings Menu"
        require_relative "bookings.rb"
    when "Check Spa Balance"
        loading_balance
        if $wallet == nil
            puts "You don't have any spa points yet."
        else
            puts "You currently have #{$wallet.wallet} spa points."
        end
    end
end
    if answer == "Exit"
    self_clear
    break
    end
    end
end

spa_menu

