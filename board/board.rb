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
        @rows.each_with_index do |row, idx|
            if idx == 0 || idx == 7
                row.each { |ele| ele = :P}
            end
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

    def move_piece(color, start_pos, end_pos)
        raise 'no piece there' if start_pos.is_a? NullPiece
        raise 'invalid move' if !valid_pos?(end_pos)

    end

    # def valid_pos?(pos)
    # end

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

    # # def print
    # #     @board.each do |row|
    # #         p row.each.piece
    # #     end
    # # end


end
#  p b = Board.new
#  p b[0]



