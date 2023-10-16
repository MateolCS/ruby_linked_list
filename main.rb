require './lib/linked_list'

list = LinkedList.new
list.append(1)
list.append(2)
list.prepend(3)
list.prepend(4)
list.to_s