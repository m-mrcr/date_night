class Node

  attr_reader :rating, :title
  attr_accessor :left, :right

  def initialize(attributes)
    @rating = attributes[:rating]
    @title = attributes[:title]
    left = nil
    right = nil
  end

end
