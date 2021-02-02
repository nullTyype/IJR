def welcome
    print "Welcome, write a value to be drawed: "
    value = gets.to_i
    value
end

storage = {100 => 1, 50 => 2, 20 => 4, 10 => 8, 5 => 16, 1 => 32}

value = welcome

=begin
def atm(value,storage)
    change = []
    if value - 100 > 0
        value -= 100
        puts value
        change << 100
        puts "Your change is #{change}"
    elsif
    end
end
=end

def atm(value,storage)
    change = []
    case value 
    when value -100 > 0
        
    when  value -50 > 0
    
    when value -20 > 0
    
    when value -10 > 0 
    
    when value -5 > 0 
    
    when -1
    
    else 
    
    end
end
case value 
when value -100 > 0
    
when  value -50 > 0

when value -20 > 0

when value -10 > 0 

when value -5 > 0 

when -1

else 

end
atm(value,storage)