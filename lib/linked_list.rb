require 'pry'
require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data) if @head == nil
    data
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

end
