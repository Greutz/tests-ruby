# Chaque méthode utilise la formule de conversion entre celsius et fahrenheit
def ftoc(fahrenheit)
   return p (fahrenheit - 32) * 5.0/9.0
end

def ctof(celsius)
    return p (celsius * 9.0/5.0) + 32
end



def perform
    p "Convertis une température de fahrenheit en celsius"
    print "> "
    # On récupère l'input en float
    fahrenheit = gets.to_f
    ftoc(fahrenheit)
    p "Convertis une température de celsius en fahrenheit"
    print "> "
    celsius = gets.to_f
    ctof(celsius)
end

perform