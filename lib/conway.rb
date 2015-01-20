require 'pry'
require 'byebug'

class Board

  def initialize(array)
    @array = array
  end

  def find_cell(num1, num2)
    array.find { |item| item.first == num1 && item.second == num2}
  end

end



class Cell

  def initialize(name, first:, second:)
    @name = name
    @first = first
    @second = second
  end

  def first
    @first
  end
  def second
    @second
  end

  def get_neighbors
    # binding.pry
    array = [[first - 1, second - 1], [first, second - 1], [first + 1, second - 1], [first - 1, second], [first + 1, second], [first - 1, second + 1], [first, second + 1], [first + 1, second + 1] ]
  end

  def is_live?
    @name == "alive" #true
  end

  # def neighbors_alive
  #   # get_neighbors.inject(0) {|memo, name| name == "alive"}
  # end

end
