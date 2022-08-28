def welcome_msg(storage)
    puts "Welcome, our current storage is #{storage} \n\n"
end

def advice_msg
    puts "We don't have infinity money! (or so?)"
end

def change_msg(change)
    puts "\n\n======================="
    puts "Your change is #{change}"
    puts "=======================\n\n"
end

def request_value
    puts "Write a value to be drawed: "
end

def current_storage(storage)
    puts "Our current storage is #{storage} \n\n"
end

def maxExchangeValue(value, totalCapacity, storage)
    puts "Our current available value is #{value - totalCapacity*-1}"
end

def notEnoughMoney(totalCapacity)
    puts "We don't have infinity money!, Please choose an value lower than #{totalCapacity}"
end