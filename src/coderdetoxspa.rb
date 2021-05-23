def spa_menu
    
    while true

    prompt = TTY::Prompt.new
    answer = prompt.select("How can we help you today?\n\n", %w(Treatments\ Available Bookings\ Menu Check\ Spa\ Balance Exit)) do

    case answer
    when "Treatments Available"
        require_relative "treatments.rb"
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

