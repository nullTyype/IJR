class Hero #creation of Hero properties
    attr_accessor :line, :column
    def compute_new_pos(direction)
        hero = self.dup
        moviments = {
            "W" => [-1, 0],
            "S" => [1, 0],
            "A" => [0, -1],
            "D" => [0, 1]
        }
        moviment = moviments[direction]
        hero.line += moviment[0]
        hero.column += moviment[1]
        hero
    end

    def to_array
        [line, column]
    end

    def remove_to(map) #movement pattern
        map[line][column] = " "
    end
    
    def add_to(map) #movement pattern
        map[line][column] = "H"
    end
end