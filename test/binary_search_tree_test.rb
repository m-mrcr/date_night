require './test/test_helper'

class BinarySearchTreeTest < MiniTest::Test

  def setup
    @tree = BinarySearchTree.new
  end

  def test_it_exists
    assert BinarySearchTree == @tree.class
  end

  def test_it_can_insert_a_single_node
    assert_equal 0, @tree.insert(61, "Bill & Ted's Excellent Adventure")
  end

end
