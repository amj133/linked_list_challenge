require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_starts_with_head_equal_to_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_returns_node_data
    list = LinkedList.new

    assert_equal 5, list.append(5)
    assert_equal 5, list.head.data
    assert_nil list.head.next_node
  end

  def test_count_returns_number_of_nodes
    list = LinkedList.new

    list.append(5)

    assert_equal 1, list.count
  end

  def test_to_s_returns_data_as_string
    list = LinkedList.new

    list.append(5)

    assert_equal "5", list.to_s
  end

  def test_append_works_for_multiple
    list = LinkedList.new

    list.append(5)
    list.append(4)

    assert_equal 4, list.head.next_node.data
    assert_nil list.head.next_node.next_node
    assert_equal 2, list.count
    assert_equal "54", list.to_s
  end

  def test_prepend_works
    list = LinkedList.new

    list.append(5)
    list.append(4)

    assert_equal 3, list.prepend(3)
    assert_equal 3, list.head.data
    assert_equal 4, list.head.next_node.next_node.data
    assert_equal 3, list.count
    assert_equal "354", list.to_s
  end

  def test_insert_works_at_beginning
    list = LinkedList.new

    list.append(5)
    list.append(4)
    list.prepend(3)

    assert_equal 8, list.insert(1, 8)
    assert_equal 8, list.head.data
    assert_equal 3, list.head.next_node.data
  end

  def test_insert_works_in_middle
    list = LinkedList.new

    list.append(2)
    list.append(3)
    list.prepend(1)
    list.insert(3, 8)

    assert_equal 1, list.head.data
    assert_equal 8, list.head.next_node.next_node.data
    assert_equal "1283", list.to_s
  end

  def test_pop_works
    list = LinkedList.new

    list.append(2)
    list.append(3)
    list.prepend(1)
    popped = list.pop

    assert_equal 3, popped
    assert_equal 1, list.head.data
    assert_equal "12", list.to_s
  end

  def test_shift_works
    list = LinkedList.new

    list.append(2)
    list.append(3)
    list.prepend(1)
    shifted = list.shift

    assert_equal 1, shifted
    assert_equal 2, list.head.data
    assert_equal "23", list.to_s
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
