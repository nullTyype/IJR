def welcome
    puts "Welcome to Pacman's game"
    puts "Your name is? "
    name = gets.strip
    puts "\n\n\n\n\n\n"
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
    while true
        draw(map)
        direction = require_move
    end
end
