require_relative "ui"

def read_map(number)
    archive = "map#{number}.txt"
    text = File.read(archive)
    map = text.split("\n")
end

def find_player(map)
    hero = "H"
    for line in 0..(map.size-1)
        current_line = map[line]
        hero_column = current_line[column].index(hero)
        if hero_column
            #find
        end
    end
    #didnt find
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

