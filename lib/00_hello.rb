def hello
return "Hello!"
end

def greet(name)
return "Hello, #{name}!"
end

def perform
    name = gets.chomp
    hello
    greet(name)
end
perform