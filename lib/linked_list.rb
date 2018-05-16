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
    old_head = head
    new_node.next_node = head
    @head = new_node
    data
  end

  def find_last_node
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

end
