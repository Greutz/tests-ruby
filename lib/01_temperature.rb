def ftoc(fahrenheit)
    (fahrenheit - 32) * 5.0/9.0
end

def ctof(celsius)
    (celsius * 9.0/5.0) + 32
end





def perform
    fahrenheit = gets.to_f
    ftoc(fahrenheit)
    celsius = gets.to_f
    ctof(celsius)
end



perform