def welcome
    print "Welcome, write a value to be drawed: "
    value = gets.to_i
    value
end

storage = {m100 => 1, m50 => 2, m20 => 4, m10 => 8, m5 => 16, m1 => 32}

value = welcome
