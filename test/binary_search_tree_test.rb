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

  def test_it_can_insert_multiple_nodes
    @tree.insert(61, "Bill & Ted's Excellent Adventure")

    assert_equal 1, @tree.insert(16, "Johnny English")
    assert_equal 1, @tree.insert(92, "Sharknado 3")
    assert_equal 2, @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

  def test_it_can_verify_presence_of_rating_in_tree
    @tree.insert(61, "Bill & Ted's Excellent Adventure")

    assert @tree.include?(61)
  end

  def test_it_can_reject_presence_of_rating_in_tree
    refute @tree.include?(61)
  end

  def test_it_can_report_level_of_depth_where_rating_occurs_in_tree
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(16, "Johnny English")
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert 1, @tree.depth_of(92)
    assert 2, @tree.depth_of(50)
  end

  def test_it_can_find_highest_rating
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(16, "Johnny English")
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")
    @tree.insert(92, "Sharknado 3")

    expected = {"Sharknado 3"=>92}

    assert_equal expected, @tree.max
  end

  def test_it_can_find_lowest_rating
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(16, "Johnny English")
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @tree.insert(50, "Hannibal Buress: Animal Furnace")
    @tree.insert(92, "Sharknado 3")

    expected = {"Johnny English"=>16}

    assert_equal expected, @tree.min
  end

end
