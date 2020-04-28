class Create < ActiveRecord::Migration[6.0]
  def change
    create_table :user_bingos do |t|
      t.integer :user_id
      t.integer :bingo_square_id

      t.timestamps
    end
  end
end
