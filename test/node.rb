require './test/test_helper'

class NodeTest < MiniTest::Test
  def setup
    @node = Node.new(91, "Cloud Atlas")
  end

  def test_it_exists
    assert_equal Node, @node.class
  end

  def test_it_has_attributes
    assert_equal 91, @node.rating
    assert_equal "Cloud Atlas", @node.title
    assert_nil @node.left
    assert_nil @node.right
  end
end
