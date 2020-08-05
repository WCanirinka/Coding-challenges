# Implement the following two methods in your own LinkedList class. You should start with your code from yesterday:

# add_at(index, item) - Add an item to a specific location in the list. The index will be a positive integer that represents the index where you should insert item. Zero is the position of the first element of the list. 
# remove(index) - Remove an item from a specific location in the List.

# You should also implement a private helper method get_node(index) to return the Node at a specific index.

# You should have already completed these two methods in the previous challenge:
# add(number) - Add number to the end of your LinkedList.
# get(index) - Get the number located at index.

# Example

# This is an example of a test case:

# list = LinkedList.new

# list.add(3)
# list.add(5)
# list.add_at(1, 11)
# list.add_at(0, 13)
# puts list.get(2)
# # => 11

# puts list.get(3)
# # => 5

# The add operations create the list: [13, 3, 11, 5]. The get operation, gets the numbers located at position 2 and 3.  

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def add(number)
    node = Node.new(number)

    if !head
      self.head = node
    else
      current = head
      current = current.next_node while current.next_node
      current.next_node = node
    end
    self.size += 1
  end

  def get(index)
    current = head
    count = 0

    while current
      return current.value if count == index

      count += 1
      current = current.next_node
    end
  end

  def add_at(index, item)
    current = head
    new_node = Node.new(item)
    if index.zero?
      self.head = Node.new(item, current)
    else
      count = 0
      previous = nil

      while count < index
        previous = current
        current = current.next_node
        count += 1
      end
      new_node.next_node = current
      previous.next_node = new_node
    end
    self.size += 1
  end

  def remove(index)
    return if index.negative? || index > self.size

    current = head
    previous = nil
    count = 0

    if index.zero?
      self.head = current.next_node
    else
      while count < index
        previous = current
        current = current.next_node
        count += 1
      end
      previous.next_node = current.next_node
    end
    self.size += 1
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5
