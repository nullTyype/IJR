require_relative "ui"

def read_map(number)
    archive = "map#{number}.txt"
    text = File.read(archive)
    map = text.split("\n")
end

def play(name)
    map = read_map(1)
    while true
        draw(map)
        direction = require_move
    end
end

def init
    name = welcome
    play(name)
end

