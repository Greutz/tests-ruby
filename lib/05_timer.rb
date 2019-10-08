def time_string(str)
# Utilisation de la classe Time avec .at pour la conversion de secondes en temps standard, puis .strftime pour l'afficher comme demandé
a = Time.at(str).utc.strftime("%H:%M:%S")   
puts a
return a
end

def perform
    p "Entrez un nombre en secondes pour le convertir en format UTC "
    print "> "
    str = gets.to_i
    time_string(str)
end
perform