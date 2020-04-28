class BingoSquare < ApplicationRecord
    has_many :users, through: :user_bingo 
    has_many :user_bingo 

    def self.make_board
        middle_sq = "Free Square"
        board = []
        squares = BingoSquare.all.map{ |square| 
            square.quote 
        }
        i = 0 

        while i < 26
            board[i] = squares.sample
            squares.delete(board[i])
            i += 1
        end

        board[12] = middle_sq
        board
    end


end
