def welcome
    puts "Welcome to Pacman's game"
    puts "Your name is? "
    name = "tester"
    puts "\n\n"
    puts "The game is starting #{name}"
    sleep 0.4
    name
end

def draw(map)
    puts map
end

def require_move
    puts "Where do you want to move?"
    move = gets.strip
end

def map_message
    puts "Choose an map! \n\n"
end

def choosen_map(choice) 
    puts "You're now playing at map #{choice}! \n\n"
end

def notValidOption
    puts "The map must be an valid number!"
end