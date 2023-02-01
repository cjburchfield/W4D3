require_relative '../pieces/Piece.rb'
require_relative '../pieces/NullPiece.rb'

class Board
    attr_accessor :rows
    
    def initialize
        @rows = Array.new(8) { Array.new(8, nil) }
        populate_board
        
        # 0] {|ele| ele = Piece.new(:P)}
    end
    
    def populate_board
        i = 0
        until i == 8
            white = [0, i]
            black = [7, i]
            self[white] = :P
            self[black] = :P
            i += 1
        end
    end
    
    def [](pos)
        row, col = pos
        @rows[row][col]
    end
    
    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end
    
    def move_piece(start_pos, end_pos)
        raise 'no piece there' if start_pos.nil?
        raise 'invalid move' if !valid_pos?(end_pos)

        self[start_pos], self[end_pos] = nil, :P
        
    end
    
    def valid_pos?(pos)
        row, col = pos
        0 <= row && row <= 7
        0 <= col && col <= 7
    end
    
    # def add_piece(piece, pos)
    # end
    
    # def checkmate?(color)
    # end
    
    # def in_check?(color)
    # end
    
    # def find_king(color)
    # end
    
    # def pieces
    # end
    
    # def dup
    # end
    
    # def move_piece!(color, start_pos, end_pos)
    # end
    
    
end

b = Board.new
s = [0,0]
e = [1,1]
b.move_piece(s, e)
p b



