puts "You currently have #{$wallet.wallet} spa points."

 module SpaTransactions
    def buy(num1, num2)
        sum = num1 - num2
        return sum
    end 
    def exchange(num1, num2, num3)
        sum = num1 - num2 + num3
        return sum
    end 
    def return(num1, num2)
        sum = num1 + num2
        return sum
    end 
end