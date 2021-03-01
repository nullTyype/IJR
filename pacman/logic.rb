require_relative "ui"

def read_map(number)
    archive = "map#{number}.txt"
    text = File.read(archive)
    map = text.split("\n")
end

def find_hero(map)
    hero = "H"
    map.each_with_index do |current_line, line|
        current_line = map[line]
        hero_column = current_line.index(hero)
        if hero_column
            return [line,hero_column]
        end
    end
    #didnt find
end

def compute_new_pos(hero, direction)
    hero = hero.dup
    case direction
    when "W"
        hero[0] -=1
    when "S"
        hero[0] +=1
    when "A"
        hero[1] -=1
    when "D"
        hero[1] +=1
    end
    hero
end

def play(name)
    map = read_map(1)
    while true
        draw(map)
        puts "\n"
        direction = require_move.upcase
        hero = find_hero(map)
        new_pos = compute_new_pos(hero, direction)
        if new_pos[0] < 0 
            next
        end
        if new_pos[1] < 0
            next
        end
        if new_pos[0] >= map.size
            next
        end
        if new_pos[1] >= map[0].size
            next
        end 
        if map[new_pos[0]] [new_pos[1]] == "X"
            next
        end
        map[hero[0]] [hero[1]] = " "
        map[new_pos[0]] [new_pos[1]] = "H"
    end
end

def init
    name = welcome
    play(name)
end

