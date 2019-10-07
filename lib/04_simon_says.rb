def echo(string)
    puts string
    string
end
    
def shout(string)
    puts string.upcase
    string.upcase
end

def repeat(string, n = 2)
    result = string+ " "
    puts result = result * n
    result[-1] = ""
    return result
end

def start_of_word(string, n)
    string[0,n]
end

def first_word(string)
    result = string.split(" ")
    result[0]
end

def titleize(string)
    unwanted = %w(and in the of a an)

    string.capitalize.gsub( /\S+/ ) { |i| unwanted.include?(i) ? i : i.capitalize}
end
