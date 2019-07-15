require './test/test_helper'

class NodeTest < MiniTest::Test
  def setup
    node = Node.new(91, "Cloud Atlas")
  end

  def test_it_exists
    assert_equal Node, node.class
  end

end
