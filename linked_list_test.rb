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
    @node = Node.new("head_node", "next_node")
  end

  def test_a_node_has_a_value_and_a_reference_to_the_next_node
    skip
    assert_equal ("head_node" "next_node"), @node.next_node
  end
end

  class Linked_List < MiniTest::Test

    def setup
      @linked_list = LinkedList.new
    end

  def test_it_can_append_a_new_element
    skip
    @linked_list.append("first_link_data") 
    assert_equal 1, @linked_list.link_list_count
  end

  def test_it_can_append_another_new_element
    skip
    @linked_list.append("next_link")
    @linked_list.append("next_link")
    assert_equal 2, @linked_list.link_list_count
  end


end
