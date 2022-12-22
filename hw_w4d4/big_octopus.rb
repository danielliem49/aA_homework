fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh','fiiiissshhhhhh']

class Array
    def sluggish_octopus
        longest_fish = ""
        self.each do |fish1|
            self.each do |fish2|
                if fish2.length > fish1.length && fish2.length > longest_fish.length
                    longest_fish = fish2
                end
            end
        end
        longest_fish
    end
    
    def dominant_octopus
        pivot = self.shift
        return self[-1] if self.length > 2
        left = self.select {|ele| ele.length < pivot.length}
        right = self.select {|ele| ele.length >= pivot.length}
        sorted = left.dominant_octopus + [pivot] + right.dominant_octopus
        return sorted[-1]
    end
    
    def clever_octopus
        result = ""
        self.each do |ele|
            if result.length < ele.length
                result = ele
            end
        end
        result
    end

end

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
    tiles_array.each do |tile|
        if tile == dir
            return tiles_array.index(tile)
        end
    end
end

def fast_dance(dir, new_tiles_data_structure)
    return new_tiles_data_structure[dir]
end