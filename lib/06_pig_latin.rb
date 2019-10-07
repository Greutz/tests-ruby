# Définition des voyelles et consonnes
Alpha = ("a".."z").to_a
Vowel = ["a", "e", "i", "o", "u"]
Conson = Alpha - Vowel

def translate(word)
    # On checke en premier si la string est composée de plusieurs mots ou pas
    if word.match(/\s/) # On checke si la string contient un espace via une regular expression (\s)
        arr = word.split(' ').map do |word| # On split la string en une array contenant chaque mot, au niveau des espaces et pour chaque mots :
            if Vowel.include?(word[0]) # On reprends nos conditions pour pig_latiniser chaque mot
                word + 'ay'
            elsif Conson.include?(word[0]) && Conson.include?(word[1])
                # word[x..x] fait référence à l'index de la string, où 0 est égal au premier caractère et -1 au dernier
                word[2..-1] + word[0..1] + 'ay'
            elsif word[0..1] == "qu"
                word[2..-1] + word[0..1] + 'ay'
            elsif Conson.include?(word[0])
                word[1..-1] + word[0..0] + 'ay'
            else
                word[3..-1] + word[0] + word[1] + word[2] + 'ay'
            end
        end.join(' ') # On recolle les mots et on remet un espace entre les mots
        puts arr
        return arr
        # On checke si la deuxième et troisième lettre sont égales à "qu"
    elsif word[1..2] == "qu"
        result7 = word[3..-1] + word[0..2] + 'ay'
        puts result7
        return result7
        # On checke si la string commence par deux consonnes
    elsif Conson.include?(word[0]) && Conson.include?(word[1]) && !Conson.include?(word[2])
        result2 = word[2..-1] + word[0..1] + 'ay'
        puts result2
        return result2
        # On checke si la string commence par trois consonnes
    elsif Conson.include?(word[0]) && Conson.include?(word[1]) && Conson.include?(word[2])
        result5 = word[3..-1] + word[0..2] + 'ay'
        puts result5
        return result5
        # On checke si la string commence par une consonne
    elsif Conson.include?(word[0]) && !Conson.include?(word[1]) && word[0..1] != "qu"
        result3 = word[1..-1] + word[0..0] + 'ay'
        puts result3
        return result3
        # On checke si la string commence par une voyelle
    elsif Vowel.include?(word[0])
        result1 = word + 'ay'
        puts result1
        return result1
        # On checke si les deux premières lettres de la string sont égales à "qu"
    elsif word[0..1] == "qu"
        result6 = word[2..-1] + word[0..1] + 'ay'
        puts result6
        return result6
    else 
    end
end


def perform
    puts "entrez un mot"
    word = gets.chomp
    word = word
    # On appelle translate en passant la variable "word"
    translate(word)
end

perform