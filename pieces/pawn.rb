require_relative 'piece'
require_relative 'slideable'

class Pawn < Piece

  def symbol
    '♟︎'
  end

  def to_s
    symbol
  end

  protected

  def move_dirs
    # return the directions in which a rook can move
    # a rook can move horizontally (across rows and columns)
    horizontal_dirs
    
  end
end



#####ANYTHING BELOW protected IS NOT RELEVENT##########