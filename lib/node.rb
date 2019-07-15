class Node

  attr_reader :rating, :name
  attr_accessor :left, :right

  def initialize(rate, name)
    @rating = rating
    @name = name
    left = nil
    right = nil
  end

end
