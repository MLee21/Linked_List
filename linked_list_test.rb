gem "minitest"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "linked_list"

class NodeTest < MiniTest::Test

  def test_it_runs
    assert true
  end

  def setup
    @node = Node.new(nil, nil)
  end

  def test_a_node_is_created_and_has_a_pointer_to_next_node
    assert_equal nil, @node.value
  end

  def test_head_node_has_a_reference_to_next_node
    @node = Node.new("head_node", "next_node")
    assert_equal "next_node", @node.next_node
  end
end

  class LinkedListTest < MiniTest::Test

    def setup
      @linked_list = LinkedList.new
    end

    def test_if_list_is_empty
      @node = Node.new(nil,nil)
      @linked_list.prepend(nil)
      assert_equal nil, @node.value
    end

    def test_it_has_a_head_node
      @node = Node.new(nil, "Gabe")
      @linked_list.prepend("Gabe")
      assert_equal "Gabe", @node.next_node
    end

    def test_it_will_print_out_node_and_a_pointer_to_next_node
      skip
      @node = Node.new(nil, "Gabe")
      @linked_list.prepend("Gabe")
      assert_equal "Gabe -> ", @node.to_s
    end

    def test_it_can_append_a_new_element
     skip
    end

    def test_it_can_append_another_new_element
      skip
      @linked_list.append("next_link")
      @linked_list.append("next_link")
      assert_equal 2, @linked_list.link_list_count
    end


end
