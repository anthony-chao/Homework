def slow_dance(direction, array)

    array.each.with_index do |ele, idx|
        if direction == ele
            return idx
        end
    end

end



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p slow_dance("right-down", tiles_array)