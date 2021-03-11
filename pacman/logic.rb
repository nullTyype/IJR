require_relative "ui"
require_relative "hero"

def read_map(number)
    archive = "map#{number}.txt"
    text = File.read(archive)
    map = text.split("\n")
end

def find_hero(map)
    hero_char = "H"
    map.each_with_index do |current_line, line|
        current_line = map[line]
        hero_column = current_line.index(hero_char)
        if hero_column
            hero = Hero.new
            hero.line = line
            hero.column = hero_column
            return hero
        end
    end
    nil
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

def copy_map(map)
    new_map = map.join("\n").tr("F", " ").split("\n")
end

def sum(vector1,vector2)
    [vector1[0]+vector2[0], vector1[1]+vector2[1]]
end

def valid_pos_from(map, new_map, pos)
    positions = []
    moviments = [[-1,0], [0,+1], [+1,0], [0,-1]]
    moviments.each do |moviment|
        new_pos = sum(pos, moviment)
        if valid_pos?(map, new_pos) && valid_pos?(new_map, new_pos)
            positions << new_pos
        end
    end

    positions
end

def move_ghost(map, new_map, line, column)
    positions = valid_pos_from(map, new_map, [line, column])

    if positions.empty?
        return
    end

    random = rand(positions.size)

    pos = positions[random]

    map[line][column] = " "
    new_map[pos[0]][pos[1]] = "F"
end

def move_ghosts(map)
    ghost = "F"
    new_map = copy_map(map)
    map.each_with_index do |current_line, line|
        current_line.chars.each_with_index do |current_char, column|
            is_ghost = current_char == ghost
            if is_ghost
                move_ghost(map, new_map, line, column)
            end 
        end
    end
    new_map
end

def player_lose?(map)
    lost = !find_hero(map)
end

def game_over
    puts "\n\n\n\n\n\n"
    puts "Game Over"
end

def play(name)
    map = read_map(2)
    while true
        draw(map)
        direction = require_move.upcase
        hero = find_hero(map)
        new_pos = hero.compute_new_pos(direction)
        if !valid_pos?(map, new_pos.to_array)
            next
        end

        map = move_ghosts(map)

        if player_lose?(map)
            game_over
            break
        end

        hero.remove_to(map)
        new_pos.add_to(map)

    end
end

def init
    name = welcome
    play(name)
end

