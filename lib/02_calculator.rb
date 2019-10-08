def add(add1, add2)
puts "La somme des deux valeurs est de : #{add1 + add2}"
result = add1 + add2
end

def subtract(sub1, sub2)
    puts "La soustraction des deux valeurs est de : #{sub1 - sub2}"
    result = sub1 - sub2
end

def sum(arr)
    n = gets.chomp.to_i
    # Boucle permettant de rentrer plusieurs valeurs à additionner (on en sort en rentrant 0)
    while n != 0
        print "> "
        arr << n
        n = gets.to_i
    end
    result = arr.inject(0) {|r, o| r + o}
    puts "la somme des chiffres du tableau est de : #{result}"
    return result
end

def multiply(mul1, mul2)
    puts "La multiplication des deux valeurs est de : #{mul1 * mul2}"
    return mul1 * mul2
end

def power(pow1,pow2)
    puts "La puissance de #{pow1} par #{pow2} est de : #{pow1 ** pow2}"
    return pow1 ** pow2
end

def factorial(fact)
    result = i = (1..fact).inject(:*) || 1
    p "La factorielle de #{fact} est de : #{result}"
    return result        
end



def perform
    # Annonce du menu
    puts "Pour additionner, entrez 'add' "
    puts "Pour soustraire, entrez 'subtract' "
    puts "Pour multiplier, entrez 'multiply' "
    puts "Pour additionner deux valeurs dans un tableau, entrez 'sum' "
    puts "Pour donner à une première valeur la puissance d'une autre valeur, entrez 'power'"
    puts "Pour obtenir le factoriel d'une valeur, tapez 'fact'"
    print "> "
    # Menu par conditions(si l'utilisateur entre les bons mots clés, il accède à une fonction)
    case gets.chomp
    when "add"
        p "Entrez vos valeurs à additionner !"
        print "> "
        add1 = gets.to_i
        p "+"
        print "> "
        add2 = gets.to_i
        add(add1, add2)
    when "subtract"
        p "Entrez vos valeurs à soustraire !"
        print "> "
        sub1 = gets.to_i
        p "-"
        print "> "
        sub2 = gets.to_i
        subtract(sub1, sub2)
    when "multiply"
        p "Entrez vos valeurs à multiplier !"
        print "> "
        mul1 = gets.to_i
        p "*"
        print "> "
        mul2 = gets.to_i
        multiply(mul1, mul2)
    when "sum"
        p "Entrez vos valeurs une à une, entrez '0' pour confirmer !"
        print "> "
        arr = []
        sum(arr)
    when "power"
        p "Entrez une première valeur, puis une autre pour avoir la puissance de cette première !"
        print "> "
        pow1 = gets.to_i
        pow2 = gets.to_i
        power(pow1, pow2)
    when "fact"
        p "Entrez une valeur pour avoir sa factorielle !"
        print "> "
        fact = gets.to_i
        factorial(fact)
    end
end

perform