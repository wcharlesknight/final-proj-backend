class RemoveUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :multi_games, :user_id
    remove_column :multi_games, :opponent
  end
end
