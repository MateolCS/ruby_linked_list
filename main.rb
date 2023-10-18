require './lib/linked_list'

list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)
list.to_s
p list.find(4)
p list.find(6)
list.insert_at(3,6)
list.to_s
list.remove_at(3)
list.to_s