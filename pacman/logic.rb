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
end

def compute_new_pos(hero, direction)
    hero = hero.dup
    moviments = {
        "W" => [-1, 0],
        "S" => [1, 0],
        "A" => [0, -1],
        "D" => [0, 1]
    }
    moviment = moviments[direction]
    hero[0] += moviment[0]
    hero[1] += moviment[1]
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

    local_value = map[pos[0]][pos[1]]
    if local_value == "X" || local_value == "F"
        return false
    end
    true
end

def move_ghost(map, line, column)
    pos = [line, column +1]
    if valid_pos?(map, pos)
        map[line][column] = " "
        map[pos[0]][pos[1]] = "F"
    end
end

def move_ghosts(map)
    ghost = "F"
    map.each_with_index do |current_line, line|
        current_line.chars.each_with_index do |current_char, column|
            is_ghost = current_char == ghost
            if is_ghost
                move_ghost(map, line, column)
            end 
        end
    end
end

def play(name)
    map = read_map(2)
    while true
        draw(map)
        direction = require_move.upcase
        hero = find_hero(map)
        new_pos = compute_new_pos(hero, direction)
        if !valid_pos?(map, new_pos)
            next
        end
        map[hero[0]] [hero[1]] = " "
        map[new_pos[0]] [new_pos[1]] = "H"

        move_ghosts(map)
    end
end

def init
    name = welcome
    play(name)
end

