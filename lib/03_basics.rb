def who_is_bigger(a, b, c)
    hash = { 'a'=>a, 'b'=>b, 'c'=>c } 
    if (a == nil || b == nil || c == nil)
        puts "nil detected"
        return "nil detected"
    end
    max = hash.values.max
    return "#{hash.key(max)} is bigger"
end

def reverse_upcase_noLTA(string)
    result = string.upcase.reverse.delete("LTA")
    return result
end

def array_42(arr)
    return arr.include?(42)
end

def magic_array(arr)
    arr.flatten.map{ |i| 2 * i}.delete_if{|i| i%3 == 0}.uniq.sort
end



