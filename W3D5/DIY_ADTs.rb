require "byebug"

class Stack

  attr_accessor :ivar

    def initialize(ivar)
      # create ivar to store stack here!
      @ivar = ivar
    end

    def push(el)
      # adds an element to the stack
        ivar.push(el)
    end

    def pop
      # removes one element from the stack
      ivar.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      ivar.last
    end

end

# arr = Stack.new([1,2,3,4,5,6])
# p arr.push(7)
# p arr.pop
# p arr.ivar
# p arr.peek

class Queue

  attr_accessor :ivar

  def initialize(ivar)
    @ivar = ivar
  end

  def enqueue(el)
    ivar.push(el)
  end

  def dequeue
    ivar.shift
  end

  def peek
    ivar.last
  end

end

# arr = Queue.new([1,2,3,4,5])
# p arr.enqueue(6)
# p arr.dequeue
# p arr.ivar
# p arr.peek

class Map

  attr_accessor :pairs

  def initialize
    @pairs = []
  end

  def set(key, value)
    @pairs << [key, value]
  end

  def get(key)
    @pairs.each { |sub_arr| return sub_arr[1] if sub_arr[0] == key }
  end

  def delete(key)
    @pairs.each { |sub_arr| @pairs.delete(sub_arr) if sub_arr[0] == key }
  end

  def show
    @pairs
  end

end

a = Map.new
p a.set("hello", "world")
p a.set("RJ", "chimmy")
p a.pairs
p a.get("RJ")
p a.delete("RJ")
p a.show