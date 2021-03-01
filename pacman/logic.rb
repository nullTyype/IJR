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
        traveled_line += -1
        traveled_column += 0
    when "S"
        traveled_line += 1
        traveled_column += 0
    when "A"
        traveled_line += 0
        traveled_column += -1
    when "D"
        traveled_line += 0
        traveled_column += 1
    end
    hero[0] += traveled_line
    hero[1] += traveled_column
    hero
end

def valid_pos?(map, pos)
    lines = map.size
    columns = map[0].size

    exceeded_line = pos[0] < 0 || pos[0] >= lines
    exceeded_column = pos[1] < 0 || pos[1] >= columns

    if exceeded_line || exceeded_column
        return false
    end

    if map[pos[0] [pos[1]] == "X"
        return false
    end
    true
end

def play(name)
    map = read_map(1)
    while true
        draw(map)
        puts "\n"
        direction = require_move.upcase
        hero = find_hero(map)
        new_pos = compute_new_pos(hero, direction)
        if !valid_pos?(map, new_pos)
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

