class CreatePlayerRanks < ActiveRecord::Migration[6.1]
  def change
    create_table :player_ranks do |t|
      t.references :rank, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
