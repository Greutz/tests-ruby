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
                word[2..-1] + word[0..1] + 'ay'
            elsif Conson.include?(word[0])
                word[1..-1] + word[0..0] + 'ay'
            else
                word[3..-1] + word[0] + word[1] + word[2] + 'ay'
            end
        end.join(' ') # On recolle les mots et on remet un espace entre les mots
        puts arr
        return arr
        # On checke si la string commence par deux consonnes
    elsif Conson.include?(word[0]) && Conson.include?(word[1])
        result2 = word[2..-1] + word[0..1] + 'ay'
        puts result2
        return result2
        # On checke si la string commence par une consonne
    elsif Conson.include?(word[0])
        result3 = word[1..-1] + word[0..0] + 'ay'
        puts result3
        return result3
        # On checke si la string commence par une voyelle
    elsif Vowel.include?(word[0])
        result1 = word + 'ay'
        puts result1
        return result1
        
    else 
    end
end


def perform
    puts "entrez un mot"
    word = gets.chomp
    word = word
    translate(word)
end

perform