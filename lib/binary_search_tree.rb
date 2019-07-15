class BinarySearchTree

  def initialize(root = nil)
    @count = 0
    @root = nil
  end

  def insert(rating, title)
    unless include?(rating)
      new_node = Node.new(rating, title)
      @count += 1
      if @root == nil
        @root = new_node
        return 0
      else
        return growth(@root, new_node)
      end
    end
  end

  def include?(rating)
    if @root == nil
      return false
    end
    return is_in_tree?(@root, rating)
  end

  def depth_of(rating)
    if include?(rating)
      return depth(@root, rating)
    else
      return nil
    end
  end

  def max
    return find_max(@root) unless @root == nil
    return nil
  end

  def min
    return find_min(@root) unless @root == nil
    return nil
  end

  #Helper Methods

  def growth(current, new_node)
    if current.rating < new_node.rating
      if current.right != nil
        return 1 + growth(current.right, new_node)
      else
        current.right = new_node
        return 1
      end
    elsif current.rating > new_node.rating
      if current.left != nil
        return 1 + growth(current.left, new_node)
      else
        current.left = new_node
        return 1
      end
    end
  end

  def is_in_tree?(current, rating)
    return true if current.rating == rating
    if rating > current.rating
      if current.right != nil
        return is_in_tree?(current.right, rating)
      else
        return false
      end
    elsif rating < current.rating
      if current.left != nil
        return is_in_tree?(current.left, rating)
      else
        return false
      end
    else
      return false
    end
  end

  def depth(current, rating)
    if current.rating == rating
      return 0
    elsif rating > current.rating
      return 1 + depth(current.right, rating)
    else
      return 1 + depth(current.left, rating)
    end
  end

  def find_max(current)
    return find_max(current.right) unless current.right == nil
    return current.data
  end

  def find_min(current)
    return find_min(current.left) unless current.left == nil
    return current.data
  end

end
