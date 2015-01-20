require_relative '../lib/conway'
class Cell

  def initialize(status, position)
    @status = status
    @position = position
  end

  def is_alive?
    @status == "alive"
  end
end
```

annie-b [4:31 PM]
conway_spec.rb:

```require 'spec_helper'
require 'pry'

require_relative '../lib/conway'

describe Cell do

# I don't remember what the numbers were

  before(:all) do
    @cell1 = Cell.new("alive",[2,3])
    @cell2 = Cell.new("dead",[3,3])
    @cell3 = Cell.new("dead",[4,3])
    @cell4 = Cell.new("dead",[2,4])
    @cell5 = Cell.new("alive",[3,4])
    @cell6 = Cell.new("dead",[4,4])
    @cell7 = Cell.new("alive",[2,5])
    @cell7 = Cell.new("dead",[3,5])
    @cell9 = Cell.new("alive",[4,5])
    # @temp2 = Celsius.new(-24)
    # @temp3 = Celsius.new(40)
    # @temp4 = Celsius.new(53)
  end

  # write the initialization method to pass this expectation
  describe '#initialize' do
    it 'creates new instances of the class Cell' do
      expect(@cell1.class).to eq Cell
    end
  end

  describe '#is_alive?' do
    it 'returns a boolean value of whether the cell is alive' do
      expect(@cell1.is_alive?).to eq true
    end
  end
end

# describe Board do

#   before(:all) do
#     @board = @call
#     # @temp2 = Celsius.new(-24)
#     # @temp3 = Celsius.new(40)
#     # @temp4 = Celsius.new(53)
#   end

#   # write the initialization method to pass this expectation
#   describe '#initialize' do
#     it 'creates new instances of the class Cell' do
#       expect(@cell1.class).to eq Cell
#     end
#   end

#   describe '#is_alive?' do
#     it 'returns a boolean value of whether the cell is alive' do
#       expect(@cell1.is_alive?).to eq true
#     end
#   end
# end
