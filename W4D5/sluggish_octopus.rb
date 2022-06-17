#O(n^2) time

def longest_fish(array)

    longest = array.first
    array.each.with_index do |ele1, idx1|
        array.each.with_index do |ele2, idx2|
        if idx1 < idx2 
            if ele1.length > ele2.length
                longest = ele1
            else
                longest = ele2
            end
        end
        end
    end
    longest
end




p longest_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=> "fiiiissshhhhhh"