require 'colorize'
class Piece
  attr_reader :color
  def initialize(color, board, pos = [])
    @color = color
    @board = board
    @pos = pos
    self.place_piece
  end

  def place_piece
    @board[@pos] = self
  end

  def to_s
    @color
  end

  def empty?
    @board.pos == nil
  end

  def valid_moves
  end

  def pos=(val)
    @pos = val
  end

  def symbol
    @color
  end

  # def to_s
  #   symbol.ciki

  def inspect
    symbol
  end

  private
  def move_into_check?(end_pos)
  end



    
  
end