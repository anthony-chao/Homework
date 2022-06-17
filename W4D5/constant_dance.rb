def constant_dance(direction, array)
    
    array.index(direction)

end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p constant_dance("right-down", tiles_array)