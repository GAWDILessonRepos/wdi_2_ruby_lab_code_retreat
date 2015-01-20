require 'spec_helper'
require 'pry'
require 'byebug'
require_relative '../lib/conway'


describe Cell do

  before(:all) do
    @cell1 = Cell.new("alive",first: 3, second: 4)
    @cell2 = Cell.new("alive",first: 2, second: 3)
    @cell3 = Cell.new("dead",first: 3, second: 3)
    @cell4 = Cell.new("alive",first: 4, second: 3)
    @cell5 = Cell.new("alive",first: 2, second: 4)
    @cell6 = Cell.new("dead",first: 4, second: 4)
    @cell7 = Cell.new("alive",first: 2, second: 5)
    @cell8 = Cell.new("alive",first: 3, second: 5)
    @cell9 = Cell.new("dead",first: 4, second: 5)
  end

describe '#initialize' do
  it 'creates new instances of the class Cell' do
    expect(@cell1.class).to eq Cell
  end
end

  describe '#get_neighbors' do
    it 'gets an array of neighbors' do
      expect(@cell1.get_neighbors).to eq [[2,3], [3,3], [4,3], [2,4], [4,4], [2,5], [3,5], [4,5] ]
    end
  end

  describe 'is_live?' do
    it 'states if a boolean for whether the cell is living or dead' do
      expect(@cell1.is_live?).to eq true
    end
  end

  describe 'find_cell' do
    it 'returns a cell with the given position' do
      expect(@board.find_cell(4,3)).to eq @cell4
    end
  end

  # describe 'neighbors_alive' do
  #   it 'counts how many living neighbors there are.' do
  #     expect(@cell1.neighbors_alive).to eq 5
  #   end
  # end


end


describe Board do
  before(:all) do
    @board = Board.new([@cell1, @cell2, @cell3, @cell4, @cell5, @cell6, @cell7, @cell8, @cell9])
  end
end
