def welcome
    puts "Welcome to Pacman's game"
    puts "Your name is? "
    name = "defaultUser"
    puts "\n\n\n\n"
    puts "The game is starting"
    sleep 0.5
    name
end

def draw(map)
    puts map
end

def require_move
    puts "Where do you want to move?"
    move = gets.strip
end
