Dir['../pieces/*.rb'].each { |file| require file }

class Board
    attr_accessor :rows
    
    def initialize
        @rows = Array.new(8) { Array.new(8, NullPiece.new) }
        
        # 0] {|ele| ele = Piece.new(:P)}
    end
    
    # def populate_board
    #     i = 0
    #     until i == 8
    #         white = [0, i]
    #         black = [7, i]
    #         self[white] = :P
    #         self[black] = :P
    #         i += 1
    #     end
    # end

    def print
        @rows.each do |row|
            puts row.join(' ')
        end
    end
    
    def populate_starting_board
        Rook.new('white', self, [0,0])
        Knight.new('white', self, [0,1])
        Bishop.new('white', self, [0,2])
        King.new('white', self, [0,3])
        Queen.new('white', self, [0,4])
        Bishop.new('white', self, [0,5])
        Knight.new('white', self, [0,6])
        Rook.new('white', self, [0,7])
        Rook.new('black', self, [7,0])
        Knight.new('black', self, [7,1])
        Bishop.new('black', self, [7,2])
        Queen.new('black', self, [7,3])
        King.new('black', self, [7,4])
        Bishop.new('black', self, [7,5])
        Knight.new('black', self, [7,6])
        Rook.new('black', self, [7,7])

        i = 0
        until i == 8
            Pawn.new('black', self, [1,i])
            Pawn.new('white', self, [6,i])
            i += 1
        end

        print
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
        
        # self[start_pos], self[end_pos] = nil, :P
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
b.populate_starting_board




