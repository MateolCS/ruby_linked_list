require_relative 'node'

# LinkedList class
#append - adds a new node to the end of the list
#prepend - adds a new node to the start of the list
#size - returns the total number of nodes in the list
#head - returns the first node in the list
#tail - returns the last node in the list
#at(index) - returns the node at the given index
#pop - removes the last element from the list
#contains?(value) - returns true if the passed in value is in the list and otherwise returns false.
#find(value) - returns the index of the node containing value, or nil if not found.
#to_s - returns a string representation of the list
#insert_at(index, value) -  inserts given value at the given index
#remove_at(index) - removes node at given index.


class LinkedList
  def initialize
    @head = nil
    @tail = nil
    puts "Linked list created"
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      @tail.next_node = Node.new(value)
      @tail = @tail.next_node
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      new_node = Node.new(value)
      new_node.next_node = @head
      @head = new_node
    end
  end

  def size
    return 0 if @head.nil?

    count = 1
    node = @head
    until node == @tail
      count += 1
      node = node.next_node
    end
    count
  end

  def head
    @head.value unless @head.nil?
  end

  def tail
    @tail.value unless @tail.nil?
  end

  def contains?(value)
    return false if @head.nil?

    node = @head
    until node == @tail
      return true if node.value == value

      node = node.next_node
    end
    node.value == value
  end

  def at(index)
    return nil if @head.nil?

    node = @head
    index.times do
      node = node.next_node
    end
    node.value
  end

  def pop
    return nil if @head.nil?

    node = @head
    until node.next_node == @tail
      node = node.next_node
    end
    node.next_node = nil
    @tail = node
  end

  def find(value)
    return nil if @head.nil?
      
      node = @head
      index = 0
      until node == @tail
        return index if node.value == value
  
        node = node.next_node
        index += 1
      end
      node.value == value ? index : nil
  end

  def insert_at(index, value)
    return nil if @head.nil?

    node = @head
    (index - 1).times do
      node = node.next_node
    end

    new_node = Node.new(value)
    new_node.next_node = node.next_node
    node.next_node = new_node
  end

  def remove_at(index)
    return nil if @head.nil?

    node = @head
    (index - 1).times do
      node = node.next_node
    end
    node.next_node = node.next_node.next_node
  end

  def to_s
    return nil if @head.nil?

    node = @head
    until node == @tail
      print "( #{node.value} ) -> "
      node = node.next_node
    end
    puts "( #{node.value} ) -> nil"
    
  end
end