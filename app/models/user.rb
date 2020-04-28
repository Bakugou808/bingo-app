class User < ApplicationRecord
    has_many :bingo_squares, through: :user_bingo 
    has_many :user_bingo 
end
