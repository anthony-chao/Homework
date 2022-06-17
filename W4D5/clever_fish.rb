#O(n) times

def clever_fish(array)

    longest = array.first
    array.each do |ele|
        if ele.length > longest.length
            longest = ele
        end
    end
    longest

end

p clever_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=> "fiiiissshhhhhh"