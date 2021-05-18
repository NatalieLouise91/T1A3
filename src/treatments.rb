class Treatment
    attr_accessor :t
    def initialize(t)
        @t = t
    end 
end 

t1 = {name: "Detox Facial", description:"", price: 200},
t2 = {name: "Detox Facial", description:"", price: 200},
t3 = {name: "Detox Facial", description:"", price: 200},
t4 = {name: "Detox Facial", description:"", price: 200},
t5 = {name: "Detox Facial", description:"", price: 200},
t6 = {name: "Detox Facial", description:"", price: 200},
t7 = {name: "Detox Facial", description:"", price: 200},
t8 = {name: "Detox Facial", description:"", price: 200}


treatments = [
    Treatment.new(t1),
    Treatment.new(t2),
    Treatment.new(t3),
    Treatment.new(t4),
    Treatment.new(t5),
    Treatment.new(t6),
    Treatment.new(t7),
    Treatment.new(t8)
]
