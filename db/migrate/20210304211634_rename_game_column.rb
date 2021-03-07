class RenameGameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :multi_scores, :game_id, :multi_game_id
  end
end
