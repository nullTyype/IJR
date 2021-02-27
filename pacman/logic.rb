require_relative "ui"

def read_map(number)
    archive = "map#{number}.txt"
    text = File.read(archive)
    map = text.split("\n")
end

def find_player(map)
    hero = "H"
    for line in 0..(map.size-1)
        if map[line].include?("H")
            for column in (0..map[line].size-1)
                if map[line][column] == hero
                    #find
                end
            end
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

