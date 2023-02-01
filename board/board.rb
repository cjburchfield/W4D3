require_relative '../pieces/Piece.rb'

class Board
    def initialize
        @board = Array.new(8) { Array.new(8, Piece.new(:N)) }
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        raise 'no piece there' if start_pos == :N
        raise 'invalid move' if !valid_pos?(end_pos)
    end

    def valid_pos?(pos)
    end

    def add_piece(piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end

    # def print
    #     @board.each do |row|
    #         p row.each.piece
    #     end
    # end


end
b = Board.new

b.print

