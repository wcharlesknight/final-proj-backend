class RenameScoreColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :score, :score_id
  end
end
