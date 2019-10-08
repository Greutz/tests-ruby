def who_is_bigger(a, b, c)
    # On créer un hash avec pour clés a b c et pour valeur a b c qui correspondent à un input utilisateur
    hash = { 'a'=>a, 'b'=>b, 'c'=>c } 
    # Condition pour vérifier si des valeurs est nulle
    if (a == nil || b == nil || c == nil)
        puts "nil detected"
        return "nil detected"
    end
    # On créer une variable contenant la plus grosse valeur du hash
    max = hash.values.max
    # On utilise hash.key pour afficher la clé, (max) en argument pour afficher celle de la plus grosse valeur
    return "#{hash.key(max)} is bigger"
end

def reverse_upcase_noLTA(string)
    # On prend la string d'entrée et on la met en maj avec .upcase, puis on l'inverse avec .reverse, puis on vire les LTA avec .delete et ('LTA') en argument (ce qu'il faut virer)
    result = string.upcase.reverse.delete("LTA")
    return result
end

def array_42(arr)
    # On utilise .include? pour checker si 42 est présent dans l'array ou pas
    return arr.include?(42)
end

def magic_array(arr)
    # On utilise .flatten pour faire une array à 1 dimension, puis .map pour faire un changement, avec un bloc doublant chaque entrée de l'array,
    # puis .delete_if pour virer les multiples de 3, le bloc utilisant un modulo pour trouver les dits multiples,
    # puis .uniq pour virer les doublons, puis .sort pour trier par ordre croissant
    arr.flatten.map{ |i| 2 * i}.delete_if{|i| i%3 == 0}.uniq.sort
end



