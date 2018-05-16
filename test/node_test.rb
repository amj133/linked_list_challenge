require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("hello")

    assert_instance_of Node, node
  end

end

# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append(5)
# => 5
# > list
# => <LinkedList head=<Node data=5 next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_s
# => "5"
# > list.append(4)
# => 4
# > list.head.next_node
# => <Node data=4 next_node=nil #5678904567890>
# > list.count
# => 2
# > list.to_s
# => "54"
# > list.prepend(3)
# => 3
# > list.count
# => 3
# > list.to_s
# => "354"
# > list.insert(1, 8)
# => 8
# > list.to_s
# => 3854
# > list.pop
# => 4
# > list.to_s
# => 385
# > list.shift
# => 3
# > list.to_s
# => 85
# ```
