class ChangeScoreIdtoScore < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :score_id, :score
  end
end
