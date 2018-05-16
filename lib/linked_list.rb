require 'pry'
require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      return head.data
    end
    current = head
    until current.next_node == nil
      current = current.next_node
    end
    current.next_node = Node.new(data)
    data
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = head
    @head = new_node
    data
  end

  def pop
    current = head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    popped = current.next_node.data
    current.next_node = nil
    popped
  end

  def shift
    old_head = head
    new_head = old_head.next_node
    @head = new_head
    old_head.data
  end

  def insert(index, data)
    new_node = Node.new(data)
    if index == 1
      new_node.next_node = head
      @head = new_node
      return data
    end
    count = 1
    left_node = head
    until count == (index - 1)
      left_node = left_node.next_node
      count += 1
    end
    right_node = left_node.next_node
    left_node.next_node = new_node
    new_node.next_node = right_node
    data
  end

  def find_tail
    current = head
    current = current.next_node until current.next_node == nil
    current
  end

  def count
    return 0 if head == nil
    current = head
    count = 1
    until current.next_node == nil
      count += 1
      current = current.next_node
    end
    count
  end

  def to_s
    return "" if head == nil
    current = head
    string = head.data.to_s
    until current.next_node == nil
      string += current.next_node.data.to_s
      current = current.next_node
    end
    string
  end

  def bubble_sort
    data = node_data
    data.each.with_index do |node_data, index|
      i = index
      while node_data < data[i + 1]
        
      end
    end
  end

  def node_data
    node_data = []
    current = head
    until current.next_node == nil
      node_data << current.data
      current = current.next_node
    end
    node_data << current.data
  end

end
