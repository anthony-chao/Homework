#We need to start at our starting node, get all the neighbors, and neighbors of the neighbors
#We put each neighbor that we visited in a Set so we don't revisit it
#We see if the target_value is included in the Set that includes all the nodes we visited

require "set"

class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end

end

def bfs(starting_node, target_value)
    queue = []
    queue << starting_node
    visited = Set.new()
    
    until queue.empty?
        node = queue.shift
        if !visited.include?(node)
            return node.val if node.val == target_value
            visited.add(node)
            queue += node.neighbors
        end
    end
    
    return nil
end



a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")