class Node

  attr_reader :rating, :title
  attr_accessor :left, :right

  def initialize(rating, title)
    @rating = rating
    @title = title
    left = nil
    right = nil
  end

  def data
    {@title=>rating}
  end

end
