class UserBingo < ApplicationRecord
    belongs_to :users 
    belongs_to :bingo_squares 
    
end
