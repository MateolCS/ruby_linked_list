require_relative 'node'

# LinkedList class
#append - adds a new node to the end of the list
#prepend - adds a new node to the start of the list
#size - returns the total number of nodes in the list
#head - returns the first node in the list
#tail - returns the last node in the list



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

  def to_s
    return nil if @head.nil?

    node = @head
    until node == @tail
      print "( #{node.value} ) -> "
      node = node.next_node
    end
    print "( #{node.value} ) -> nil"
  end
end