class CreateMultiScores < ActiveRecord::Migration[6.1]
  def change
    create_table :multi_scores do |t|
      t.integer :points
      t.references :multi_game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
