def dominant_octopus(array)

    mid_idx = array.length / 2

    left_longest = array.first
    right_longest = array.last

    (0...mid_idx).each do |idx1|
        if left_longest.length < array[idx1].length
            left_longest = array[idx1]
        end
    end

    (mid_idx..-1).each do |idx2|
        if right_longest.length < array[idx1].length
            right_longest = array[idx1]
        end
    end

    left_longest.length > right_longest.length ? left_longest : right_longest

end


p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=> "fiiiissshhhhhh"