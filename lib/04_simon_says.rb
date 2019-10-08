def echo(string)
    puts string
    string
end
    
def shout(string)
    # Affiche la string en majuscules
    puts string.upcase
    string.upcase
end
    # Deux arguments passés, la string et un argument optionnel, dont 2 est la valeur par défaut si aucune valeur n'es passée
def repeat(string, n = 2)
    # On rajoute un espace après la string pour que la répétition ne colle pas chaque mots entre eux
    result = string+ " "
    # On multiplie la string par le chiffre entré par l'utilisateur
    puts result = result * n
    # On utilise l'index de la nouvelle string pour ne pas afficher le dernier caractère(un espace)
    result[-1] = ""
    return result
end

def start_of_word(string, n)
    # On créer une portée sur l'index de la string allant du début de la string à n, n étant 1 dans le test pour n'afficher que la 1ere lettre de la string 
    string[0,n]
end

def first_word(string)
    # On utilise .split pour couper la string au niveau des espaces, ce qui nous donne un array avec chaque mot, puis on n'affiche que le premier avec l'index de l'array (0)
    result = string.split(" ")
    result[0]
end

def titleize(string)
    # On défini quels sont les mots dont on ne veut pas que la 1ere lettre soit en majuscule
    unwanted = %w(and in the of a an)
    # On met la 1ere lettre du 1ere mot en maj avec .cap; puis on change le reste avec gsub, avec en argument une regexp qui va passer sur chaque mot de la string (\w), puis on fait un if else dans le bloc avec ? pour checker si la string contient des mots contenus dans l'array "non voulu", tout les mots n'étant pas dans l'array voient leur 1ere lettre changée en majuscule
    string.capitalize.gsub(/\w+/) {|w| unwanted.include?(w) ? w : w.capitalize}
end                                # On utilise l'index de la string ( |w| )pour checker si elle contient bien des mots à ne pas changer
                                                        # (?) si ça correspond (w), on touche pas, sinon(:) on change (w.capitalize)
