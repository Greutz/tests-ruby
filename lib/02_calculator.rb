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
    while n != 0
        arr << n
        n = gets.to_i
    end
    puts arr.inject(0) {|r, o| r + o}
    return arr.inject(0) {|r, o| r + o}
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
    i = (1..fact).inject(:*) || 1
    return i         
end



def perform
    puts "Pour additionner, entrez 'add' "
    puts "Pour soustraire, entrez 'subtract' "
    puts "Pour multiplier, entrez 'multiply' "
    puts "Pour additionner deux valeurs dans un tableau, entrez 'sum' "
    puts "Pour donner à une première valeur la puissance d'une autre valeur, entrez 'power'"
    puts "Pour obtenir le factoriel d'une valeur, tapez 'fact'"
    case gets.chomp
    when "add"
        "Entrez vos valeurs à additionner !"
        add1 = gets.to_i
        add2 = gets.to_i
        add(add1, add2)
    when "subtract"
        sub1 = gets.to_i
        sub2 = gets.to_i
        subtract(sub1, sub2)
    when "multiply"
        mul1 = gets.to_i
        mul2 = gets.to_i
        multiply(mul1, mul2)
    when "sum"
        arr = []
        sum(arr)
    when "power"
        pow1 = gets.to_i
        pow2 = gets.to_i
        power(pow1, pow2)
    when "fact"
        fact = gets.to_i
        factorial(fact)
    end
end

perform