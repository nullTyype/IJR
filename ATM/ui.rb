def welcome_msg(storage)
    puts "Welcome, our current storage is #{storage} \n\n"
end

def advice_msg
    puts "We don't have infinity money! (or so?)"
end

def change_msg(change)
    puts "\n\n========================================="
    puts "Your change is #{change}"
    puts "=========================================\n\n"
end

def request_value
    puts "Write a value to be drawed: "
end

def current_storage(storage)
    puts "Our current storage is #{storage} \n\n"
end

def currentExchange(totalCapacity)
    puts "Our available value is #{totalCapacity}.\n\n"
end

def notEnoughMoney
    puts "We don't have infinity money! Please choose an value lower than the current value!"
end

def noMoney
    "You went beyond the available value"
end
