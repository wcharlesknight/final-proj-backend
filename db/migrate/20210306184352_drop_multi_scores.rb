class DropMultiScores < ActiveRecord::Migration[6.1]
  def change
    drop_table :multi_scores
  end
end
