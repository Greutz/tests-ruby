def time_string(str)

    a = Time.at(str).utc.strftime("%H:%M:%S")
        
end
puts time_string(4000)